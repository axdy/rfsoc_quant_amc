from pynq import Overlay
from pynq import allocate
import xrfclk
import xrfdc
import numpy as np
from cyclic_buffer import CyclicBuffer

__author__ = "Andrew Maclellan"

class OverlayAMC(Overlay):
    """Overlay subclass for cyclic-buffer.
    
    Performs the initialisation with RF components for performing 
    loopback from a cyclic buffer.
    """
    
    def __init__(self, bitfile_name=None, init_rf_clks=True, **kwargs):
        """Setup Overlay for RFSoC cyclic buffer loopback
        
        bitfile_name: Optional. If left None, the bitstream 'cyclic_buf.bit'
                      will be used.
        
        init_rf_clks: If True, the reference clocks are configured for ADC0 and DAC0. If the
                      clocks are already configured, set to false for faster execution.
        """
        
        # Use default bitstream name
        if bitfile_name is None:
            bitfile_name = 'amc_cnn.bit'
        
        # Create Overlay using overlay class
        super().__init__(bitfile_name, **kwargs)
        
        # Get the CNN components
        # CNN 16w16a
        self.cnn_0 = self.receiver.amc_cnn_16w16a
        self.dma_controller_0 = self.receiver.dma_controller_0
        self.cnn_0.write(0x100,1)
        # CNN 8w16a
        self.cnn_1 = self.receiver.amc_cnn_8w16a
        self.dma_controller_1 = self.receiver.dma_controller_1
        self.cnn_1.write(0x100,1)
        # CNN 4w16a
        self.cnn_2 = self.receiver.amc_cnn_4w_16a
        self.dma_controller_2 = self.receiver.dma_controller_2
        self.cnn_2.write(0x100,1)
        
        ## Initialise the RFDC with default configurations
        
        # Get the rf components
        self.rf = self.usp_rf_data_converter_0
        self.adc_tile = self.rf.adc_tiles[0]
        self.adc_block = self.adc_tile.blocks[0]
        self.dac_tile = self.rf.dac_tiles[0]
        self.dac_block = self.dac_tile.blocks[0]
        
        # Initialise the ref_clocks
        if init_rf_clks:
            xrfclk.set_ref_clks()
        
        # Set sane DAC defaults
        self.dac_tile.DynamicPLLConfig(1, 409.6, 1228.8)
        self.dac_block.NyquistZone = 2
        self.dac_block.MixerSettings = {
        'CoarseMixFreq':  xrfdc.COARSE_MIX_BYPASS,
        'EventSource':    xrfdc.EVNT_SRC_IMMEDIATE,
        'FineMixerScale': xrfdc.MIXER_SCALE_0P7,
        'Freq':           1000,
        'MixerMode':      xrfdc.MIXER_MODE_C2R,
        'MixerType':      xrfdc.MIXER_TYPE_FINE,
        'PhaseOffset':    0.0
        }
        self.dac_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.dac_tile.SetupFIFO(True)

        # Set sane ADC defaults
        self.adc_tile.DynamicPLLConfig(1, 409.6, 1228.8)
        self.adc_block.NyquistZone = 2
        self.adc_block.MixerSettings = {
        'CoarseMixFreq':  xrfdc.COARSE_MIX_BYPASS,
        'EventSource':    xrfdc.EVNT_SRC_TILE,
        'FineMixerScale': xrfdc.MIXER_SCALE_1P0,
        'Freq':           1000,
        'MixerMode':      xrfdc.MIXER_MODE_R2C,
        'MixerType':      xrfdc.MIXER_TYPE_FINE,
        'PhaseOffset':    0.0
        }
        self.adc_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.adc_tile.SetupFIFO(True)
        
        # Get Tx and Rx components
        self._cyclic_buf = self.transmitter.cyclic_buf
        self._tx_dma = self.transmitter.tx_dma
        # # CNN 16w16a
        self._rx_dma_0 = self.receiver.rx_dma_0
        # CNN 8w16a
        self._rx_dma_1 = self.receiver.rx_dma_1
        # CNN 4w16a
        self._rx_dma_2 = self.receiver.rx_dma_2
        
        # Set default receiver buffer length
        self._data_length = 1024
        
        # packet generator IPs
        self.dma_pkt = self.receiver.rx_dma_pkt
        self.pkt_gen = self.receiver.packet_generator

    def send(self, data_buffer):
        """ Send data from PS memory to the DAC through:
        [dma -> cyclic buffer -> dac]
        The sent data is transmitted continuously.
        """
        self._cyclic_buf.write_mode()
        self._data_length = len(data_buffer)
        input_buffer = allocate(shape=(self._data_length,), dtype=np.int16)
        input_buffer[:] = data_buffer
        
        self._tx_dma.sendchannel.transfer(input_buffer)
        self._tx_dma.sendchannel.wait()
        # set cyclic buffer to read mode
        self._cyclic_buf.read_mode()
        
    def receive(self):
        self.pkt_gen.write(0x104,128)
        output_buffer_0 = allocate(shape=(8,),dtype=np.uint32)
        output_buffer_1 = allocate(shape=(8,),dtype=np.uint32)
        output_buffer_2 = allocate(shape=(8,),dtype=np.uint32)
        pkt_buffer = allocate(shape=(128,),dtype=np.uint32)
        self._rx_dma_0.recvchannel.transfer(output_buffer_0)
        self._rx_dma_1.recvchannel.transfer(output_buffer_1)
        self._rx_dma_2.recvchannel.transfer(output_buffer_2)
        self.dma_pkt.recvchannel.transfer(pkt_buffer)
        self.dma_controller_0.write(0x100,1)
        self.dma_controller_1.write(0x100,1)
        self.dma_controller_2.write(0x100,1)
        self.pkt_gen.write(0x100,1)
        self._rx_dma_0.recvchannel.wait()
        self._rx_dma_1.recvchannel.wait()
        self._rx_dma_2.recvchannel.wait()
        self.dma_pkt.recvchannel.wait()
        self.dma_controller_0.write(0x100,0)
        self.dma_controller_1.write(0x100,0)
        self.dma_controller_2.write(0x100,0)
        self.pkt_gen.write(0x100,0)
        output_bytes_0 = output_buffer_0.tobytes()
        output_bytes_1 = output_buffer_1.tobytes()
        output_bytes_2 = output_buffer_2.tobytes()
        return [np.frombuffer(output_bytes_0, dtype='float32'), np.frombuffer(output_bytes_1, dtype='float32'), np.frombuffer(output_bytes_2, dtype='float32'), pkt_buffer]
    
    def clean(self):
        self._cyclic_buf.stop()
        
    @property
    def phase_offset_tx(self):
        return self.dac_block.MixerSettings['PhaseOffset']
    
    @phase_offset_tx.setter
    def phase_offset_tx(self, value):
        self.dac_block.MixerSettings['PhaseOffset'] = value
        
    # Accuracy functions
    def run_testset(self, dict_x):
        # Assumption that label are the dict keys
        self._running_total = 0
        self._correct_total = 0
        mods = list(dict_x.keys())
        acc_count = 0
        total_count = 0
        for mod in mods:
            data = dict_x[mod]
            for i in range(data.shape[2]):
                y_pred = self.predict(data[:,:,i])
                y_true = mods.index(mod)
                if y_pred == y_true:
                    acc_count += 1
                total_count += 1
        return acc_count/total_count * 100.0
                
    def predict(self,data):
        self.send_data(data)
        [y_pred, re_data, im_data] = self.receive_data()
        self.clean()
        return y_pred, re_data, im_data
    
    def complex2realimag(self, complex_data):
        re_data = np.int16(np.bitwise_and(complex_data,0xFFFF))
        im_data = np.int16(np.right_shift(complex_data,16) & 0xFFFF)
        return re_data, im_data
    
    def send_data(self, data):
        y = np.int16(data*np.int16(pow(2,14)))
        z = np.zeros(2*4096, dtype=np.int16)
        z[0::2] = y[0,:]
        z[1::2] = y[1,:]
        self.send(z)
        
    def receive_data(self):
        self.cnn_0.write(0x100,1)
        self.cnn_1.write(0x100,1)
        self.cnn_2.write(0x100,1)
        [y_pred_0, y_pred_1, y_pred_2,complex_data] = self.receive()
        max_value_0 = np.max(y_pred_0)
        max_index_0 = np.where(y_pred_0 == max_value_0)
        max_value_1 = np.max(y_pred_1)
        max_index_1 = np.where(y_pred_1 == max_value_1)
        max_value_2 = np.max(y_pred_2)
        max_index_2 = np.where(y_pred_2 == max_value_2)
        re_data, im_data = self.complex2realimag(complex_data)
        return max_index_0[0][0], max_index_1[0][0], max_index_2[0][0],re_data, im_data