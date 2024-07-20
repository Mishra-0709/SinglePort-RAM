# SinglePort-RAM

This Verilog module implements a single-port RAM (Random Access Memory) with configurable address width, data width, and depth. It allows for the storage and retrieval of data based on the input address. The module supports both read and write operations, controlled by the 'we' (Write Enable) signal. The module operates on a positive edge-triggered clock signal.

![SinglePortRAM](https://github.com/user-attachments/assets/d47b6cdd-cbd1-4d0d-97bc-4c2c4cb474fc)

## Module Ports

- **data** (input[data_width-1:0]): Input data to be written into the RAM when 'we' is asserted.
- **addr** (input[addr_width-1:0]): Address input to specify the location in the RAM for read or write operations.
- **we** (input): Write enable signal. When asserted, data is written into the RAM at the specified address.
- **clk** (input): Clock input signal for synchronization.
- **q** (output[data_width-1:0]): Output data retrieved from the RAM based on the input address.

## Parameters

- **addr_width**: Configurable parameter to set the width of the address bus.
- **data_width**: Configurable parameter to set the width of the data bus.
- **depth**: Configurable parameter to set the depth (number of memory locations) of the RAM.

## Implementation

The RAM is implemented using a Verilog array `ram` with `depth` number of elements, each element being a register of `data_width` bits. Data is stored and retrieved from this array based on the input address. Write operation occurs when 'we' is asserted, and data is written into the RAM at the address specified by `addr`. Read operation occurs otherwise, where data is retrieved from the RAM based on the address stored in `addr_reg`, which is updated on every clock cycle.

## Usage

Instantiate this module in your Verilog design and provide appropriate connections to the input and output ports. Ensure that the parameters `addr_width`, `data_width`, and `depth` are set according to your design requirements.
