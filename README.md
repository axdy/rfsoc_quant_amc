# RFSoC Quantised Automatic Modulation Classification
This project showcases the custom quantised CNN hardware inference architecture for SoC-based wireless radio receivers like the **AMD RFSoC**.

The CNN model receives data samples from the RFSoC ADC and classifies the modulation scheme the received signal is encoded with.

**Comparing 4 levels of quantisation:**
- 16-bit weights & 16-bit activations
- 8-bit weights & 16-bit activations
- 4-bit weights & 16-bit activations
- 2-bit weights & 16-bit activations

The demonstration shows a comparison between 4 models with different weight quantisations. The demo has two notebooks, one with models deployed with Post-Training Quantisation (PTQ) and another with the model's weights trained with Quantised-Aware Training (QAT) using [Brevitas](https://github.com/Xilinx/brevitas). Trained weights were exported into MATLAB & Simulink and the accelerator was built using [HDL Coder](https://uk.mathworks.com/products/hdl-coder.html).

![demo.gif](images/demo.gif)

The signal is received via an RF loopback cable connected to the RF-DAC. The modulates signal has been distorted by passing it through a simulated Rician multipath channel, adding Gaussian noise at levels ranging from -20dB to 24dB, and applying time, frequency, clock offsets.

Data set construction:

![dataset_generation.png](images/dataset_generation.png)

## Installation
### On RFSoC
Make sure the RFSoC is connected to the internet (otherwise, zip the github repo and copy over to the RFSoC).

Install with:
- `pip3 install git+https://github.com/strath-sdr/rfsoc_quant_amc`
- If you want to have the test set data please pull from Git LFS (500MB): `git lfs pull`


## Hardware Setup
The demo performs best with a Nooelec Low-Noise Amplifier VGA with a low-pass filter in loopback between DAC_A and ADC_A. The VGA configuration is in digital mode (SW7 ON) with all switches to OFF.

![RFSoC4x2_loopback.png](images/RFSoC4x2_loopback.png)


## Vivado
The following software is required to use the project files in this repository.
- Vivado Design Suite 2020.2

This project can be built with Vivado from the command line. Open Vivado 2020.2 and execute the following into the tcl console:

`cd /<repository-location>/boards/<board-name>/rfsoc_quant_amc/`

Make the Vivado project by running the make commands below:
`make all`

# License
BSD-3 Clause