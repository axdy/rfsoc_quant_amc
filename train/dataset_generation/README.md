# DeepRFSoC Dataset Generation

This subfolder holds the files required to generate the signals encoded with modulation schemes for training the modulation classifier model.

There are two folders here:
- `matlab/`
    - MATLAB files for generating modulation schemes using the Communications Toolbox.
- `boards/`
    - notebook and bitstream for sending generated data to RFSoC, transmitted out of DAC, and received by ADC.

## Where to begin
To generate your own version of the DeepRFSoC dataset please start by first generating the data from MATLAB and then transfer the files to the RFSoC board for transmission.

## Tools
- MATLAB R2020a (or higher)