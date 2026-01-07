# RFSoC Dataset Transmit and Receive

Using the same bitstream from the demo and a new notebook, the dataset generated from MATLAB can be transmitted from the RFSoC's PS, to the PL, and through the RFSoC loopback.

# Preparation
To generate your own dataset:
1. Copy the contents of the `board/{board}` to the RFSoC board.
2. Copy the generated `transmit_{mod}_SNR.pkl` to the `transmit_set/` on the board.
3. Run the notebook and wait for it to record.