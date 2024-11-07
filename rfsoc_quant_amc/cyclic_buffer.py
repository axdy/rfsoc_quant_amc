from pynq import DefaultIP

__author__ = "Andrew Maclellan"

class CyclicBuffer(DefaultIP):
    """ Cyclic buffer is a state machine connected to a buffer.
        When the states are:
        0. INIT state    - waits for enable and wr_en
        1. WRITE         - writes valid samples to buffer till t_last
        2. READ          - reads samples from buffer till enable is turned off
        3. WAIT_FOR_READ - waits for signal to start transmitting
    """
    def __init__(self, description):
        super().__init__(description=description)
        self.write_mode()
        
    def write_mode(self):
        """Set cyclic buffer to write mode"""
        self.enable = 1
        self.wr_en = 0
    
    def read_mode(self):
        """Set cyclic buffer to read mode"""
        self.enable = 1
        self.wr_en = 1
    
    def stop(self):
        """Stops current cyclic transmission"""
        self.enable = 0
        self.wr_en = 0
        
    @property    
    def enable(self):
        return self.read(0x104)
    @enable.setter
    def enable(self,value):
        self.write(0x104,value)
        
    @property
    def wr_en(self):
        return self.read(0x100)
        
    @wr_en.setter
    def wr_en(self, value):
        self.write(0x100,value)
        
    @property
    def state(self):
        return self.read(0x10C)
        
        
    bindto = ['user.org:ip:cyclicBufferMultirate:1.0']