__author__ = "Andrew Maclellan"
__organisation__ = "StrathSDR"

from pynq import Overlay
from pynq import allocate
import xrfclk
# from rfsoc_quant_amc import clocks
import xrfdc
import numpy as np

class Overlay(Overlay):
    """Overlay class for controlling the AMC dataset
    """
    
    def __init__(self, bitfile_name=None, **kwargs):
        """Setup Overlay for the RFSoC transmission and reception
        bitfile_name: Optional. If left None, the bitstream 'amc_3q_4x2.bit'
                      will be used.
        """
        
        # Use the default bitstream name
        if bitfile_name is None:
            # bitfile_name = './bitstream/amc_3q_4x2.xsa'
            bitfile_name = './bitstream/amc_3q_impr.bit'
        
        # Init the Overlay base class
        super().__init__(bitfile_name, **kwargs)
        
        # Get the rf components
        self.rf = self.usp_rf_data_converter_0
        self.adc_tile = self.rf.adc_tiles[0]
        self.adc_block = self.adc_tile.blocks[0]
        self.dac_tile = self.rf.dac_tiles[0]
        self.dac_block = self.dac_tile.blocks[0]
        
        # clocks.set_custom_lmclks()
        xrfclk.set_ref_clks()
        
    def initialise_dacs(self, pll_freq, sampling_freq, centre_freq):
        self.dac_tile.DynamicPLLConfig(1, pll_freq, sampling_freq)
        self.dac_block.NyquistZone = 1
        self.dac_block.MixerSettings = {
        'CoarseMixFreq':  xrfdc.COARSE_MIX_BYPASS,
        'EventSource':    xrfdc.EVNT_SRC_IMMEDIATE,
        'FineMixerScale': xrfdc.MIXER_SCALE_0P7,
        'Freq':           centre_freq,
        'MixerMode':      xrfdc.MIXER_MODE_C2R,
        'MixerType':      xrfdc.MIXER_TYPE_FINE,
        'PhaseOffset':    0.0
        }
        self.dac_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.dac_tile.SetupFIFO(True)
        
    def initialise_adcs(self, pll_freq, sampling_freq, centre_freq):
        self.adc_tile.DynamicPLLConfig(1, pll_freq, sampling_freq)
        self.adc_block.NyquistZone = 1
        self.adc_block.MixerSettings = {
        'CoarseMixFreq':  xrfdc.COARSE_MIX_BYPASS,
        'EventSource':    xrfdc.EVNT_SRC_TILE,
        'FineMixerScale': xrfdc.MIXER_SCALE_1P0,
        'Freq':           centre_freq,
        'MixerMode':      xrfdc.MIXER_MODE_R2C,
        'MixerType':      xrfdc.MIXER_TYPE_FINE,
        'PhaseOffset':    0.0
        }
        self.adc_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.adc_tile.SetupFIFO(True)
        
    def initialise_ips(self):
        self.tx_dma = self.transmitter.tx_dma
        
        # Set default receiver buffer length
        self._data_length = 1024
        
        # packet generator IPs
        self.dma_pkt = self.receiver.rx_dma_pkt
        self.pkt_gen = self.receiver.packet_generator
        
        # CNN modules
        # cnn 16w16a
        self.cnn = self.receiver.amc_cnn_16w16a
        self.cnn.write(0x100,1)
        self.dma_controller = self.receiver.dma_controller_0
        self.rx_dma_0 = self.receiver.rx_dma_0
        # cnn 8w16a
        self.cnn_1 = self.receiver.amc_cnn_8w16a
        self.cnn_1.write(0x100,1)
        self.dma_controller_1 = self.receiver.dma_controller_1
        self.rx_dma_1 = self.receiver.rx_dma_1
        # cnn 4w16a
        self.cnn_2 = self.receiver.amc_cnn_4w16a
        self.cnn_2.write(0x100,1)
        self.dma_controller_2 = self.receiver.dma_controller_2
        self.rx_dma_2 = self.receiver.rx_dma_2
        
    def send(self, data_buffer):
        """ Send data from PS memory to the DUC chain
        by setting the dma to operate cyclically.
        [dma -> fir_interp_4 -> fir_interp_8 -> rf_dac]
        The sent data is transmitter continuously.
        """
        
        self._data_length = len(data_buffer)
        input_buffer = allocate(shape=(self._data_length,), dtype=np.int16)
        input_buffer[:] = data_buffer
        
        # Stop sending what was being sent
        self.tx_dma.sendchannel.stop()
        # Start cyclically sending new data
        self.tx_dma.sendchannel.transfer(input_buffer, cyclic=True)
        
    def receive(self):
        self.pkt_gen.write(0x104, 128)
        pkt_buffer = allocate(shape=(128,),dtype=np.uint32)
        output_buffer = allocate(shape=(8,),dtype=np.uint32)
        output_buffer_1 = allocate(shape=(8,),dtype=np.uint32)
        output_buffer_2 = allocate(shape=(8,),dtype=np.uint32)
        self.rx_dma_0.recvchannel.transfer(output_buffer)
        self.rx_dma_1.recvchannel.transfer(output_buffer_1)
        self.rx_dma_2.recvchannel.transfer(output_buffer_2)
        self.dma_pkt.recvchannel.transfer(pkt_buffer)
        self.dma_controller.write(0x100,1)
        self.dma_controller_1.write(0x100,1)
        self.dma_controller_2.write(0x100,1)
        self.pkt_gen.write(0x100,1)
        self.rx_dma_0.recvchannel.wait()
        self.rx_dma_1.recvchannel.wait()
        self.rx_dma_2.recvchannel.wait()
        self.dma_pkt.recvchannel.wait()
        self.dma_controller.write(0x100,0)
        self.dma_controller_1.write(0x100,0)
        self.dma_controller_2.write(0x100,0)
        self.pkt_gen.write(0x100,0)
        output_bytes = output_buffer.tobytes()
        output_bytes_1 = output_buffer_1.tobytes()
        output_bytes_2 = output_buffer_2.tobytes()
        return [np.frombuffer(output_bytes, dtype='float32'), np.frombuffer(output_bytes_1, dtype='float32'), np.frombuffer(output_bytes_2, dtype='float32'), pkt_buffer]
    
    def stop(self):
        self.tx_dma.sendchannel.stop()
    
    @property
    def phase_offset_tx(self):
        return self.dac_block.MixerSettings['PhaseOffset']
    
    @phase_offset_tx.setter
    def phase_offset_tx(self, value):
        self.dac_block.MixerSettings['PhaseOffset'] = value
        
    def complex2realimag(self, complex_data):
        re_data = np.int16(np.bitwise_and(complex_data,0xFFFF))
        im_data = np.int16(np.right_shift(complex_data,16) & 0xFFFF)
        return re_data, im_data
    
    def receive_data(self):
        self.cnn.write(0x100,1)
        [y_pred, y_pred_1, y_pred_2, complex_data] = self.receive()
        max_value = np.max(y_pred)
        max_index = np.where(y_pred == max_value)
        max_value_1 = np.max(y_pred_1)
        max_index_1 = np.where(y_pred_1 == max_value_1)
        max_value_2 = np.max(y_pred_2)
        max_index_2 = np.where(y_pred_2 == max_value_2)
        re_data, im_data = self.complex2realimag(complex_data)
        re, im = re_data / pow(2,14), im_data / pow(2,14)
        return max_index[0][0], max_index_1[0][0], max_index_2[0][0], re, im