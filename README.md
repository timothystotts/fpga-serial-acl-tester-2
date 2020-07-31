# fpga-serial-acl-tester-2

FPGA Serial ACL Tester Version 2
by Timothy Stotts


## Description
A small AP SoC project of Zynq-7000 implementation for testing Measurement and Activity Events of a SPI accelerometer.
The design targets the Digilent Inc. Zybo-Z7-20 FPGA development board
containing a Xilinx Zynq-7000 AP SoC.
Three peripherals are used: Digilent Inc. Pmod ACL2, Digilent Inc. Pmod CLS.,
Digilent Inc. Pmod SSD.

The folder ACL-Tester-Design-Zynq contains a Xilinx Vivado IP Integrator plus
Xilinx SDK design. The Zynq hard ARM CPU #0 is configured to talk with board
components,
a SPI MEMS accelerometer peripheral,
a 16x2 character LCD peripheral,
and a 7-segment display.

Sources to be imported into a Xilinx SDK workspace contain
a very small FreeRTOS program in C; drivers for the peripherals,
a real-time task to operate the accelerometer chip,
two real-time tasks to display data, and a real-time task to color-miix RGB LEDs.

### Project information document:

./Serial ACL Readings Tester - Zynq.pdf

[Serial ACL Readings Tester - Zynq info](https://github.com/timothystotts/fpga-serial-acl-tester-2/blob/master/Serial%20ACL%20Readings%20Tester%20-%20Zynq.pdf)

#### Target device assembly: Zybo-Z7-20 with Pmod ACL2, Pmod CLS, Pmod SSD, on extension cables

![Target device assembly](https://github.com/timothystotts/fpga-serial-acl-tester-2/blob/master/img_serial-acl-tester-assembled-20200731.jpg)
