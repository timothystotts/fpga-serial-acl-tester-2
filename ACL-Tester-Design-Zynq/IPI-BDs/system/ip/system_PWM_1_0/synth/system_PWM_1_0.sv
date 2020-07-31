// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: digilentinc.com:IP:PWM:2.0
// IP Revision: 11

(* X_CORE_INFO = "PWM_v2_0,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "system_PWM_1_0,PWM_v2_0,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_PWM_1_0 (
  pwm,
  pwm_axi_awaddr,
  pwm_axi_awprot,
  pwm_axi_awvalid,
  pwm_axi_awready,
  pwm_axi_wdata,
  pwm_axi_wstrb,
  pwm_axi_wvalid,
  pwm_axi_wready,
  pwm_axi_bresp,
  pwm_axi_bvalid,
  pwm_axi_bready,
  pwm_axi_araddr,
  pwm_axi_arprot,
  pwm_axi_arvalid,
  pwm_axi_arready,
  pwm_axi_rdata,
  pwm_axi_rresp,
  pwm_axi_rvalid,
  pwm_axi_rready,
  pwm_axi_aclk,
  pwm_axi_aresetn
);

output wire [3 : 0] pwm;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWADDR" *)
input wire [6 : 0] pwm_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWPROT" *)
input wire [2 : 0] pwm_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWVALID" *)
input wire pwm_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWREADY" *)
output wire pwm_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WDATA" *)
input wire [31 : 0] pwm_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WSTRB" *)
input wire [3 : 0] pwm_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WVALID" *)
input wire pwm_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WREADY" *)
output wire pwm_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI BRESP" *)
output wire [1 : 0] pwm_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI BVALID" *)
output wire pwm_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI BREADY" *)
input wire pwm_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARADDR" *)
input wire [6 : 0] pwm_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARPROT" *)
input wire [2 : 0] pwm_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARVALID" *)
input wire pwm_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARREADY" *)
output wire pwm_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RDATA" *)
output wire [31 : 0] pwm_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RRESP" *)
output wire [1 : 0] pwm_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RVALID" *)
output wire pwm_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PWM_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system\
7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RREADY" *)
input wire pwm_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PWM_AXI_CLK, ASSOCIATED_BUSIF PWM_AXI, ASSOCIATED_RESET pwm_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 PWM_AXI_CLK CLK" *)
input wire pwm_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PWM_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 PWM_AXI_RST RST" *)
input wire pwm_axi_aresetn;

  PWM_v2_0 #(
    .C_PWM_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_PWM_AXI_ADDR_WIDTH(7),  // Width of S_AXI address bus
    .NUM_PWM(4),
    .POLARITY(1'B1)
  ) inst (
    .pwm(pwm),
    .pwm_axi_awaddr(pwm_axi_awaddr),
    .pwm_axi_awprot(pwm_axi_awprot),
    .pwm_axi_awvalid(pwm_axi_awvalid),
    .pwm_axi_awready(pwm_axi_awready),
    .pwm_axi_wdata(pwm_axi_wdata),
    .pwm_axi_wstrb(pwm_axi_wstrb),
    .pwm_axi_wvalid(pwm_axi_wvalid),
    .pwm_axi_wready(pwm_axi_wready),
    .pwm_axi_bresp(pwm_axi_bresp),
    .pwm_axi_bvalid(pwm_axi_bvalid),
    .pwm_axi_bready(pwm_axi_bready),
    .pwm_axi_araddr(pwm_axi_araddr),
    .pwm_axi_arprot(pwm_axi_arprot),
    .pwm_axi_arvalid(pwm_axi_arvalid),
    .pwm_axi_arready(pwm_axi_arready),
    .pwm_axi_rdata(pwm_axi_rdata),
    .pwm_axi_rresp(pwm_axi_rresp),
    .pwm_axi_rvalid(pwm_axi_rvalid),
    .pwm_axi_rready(pwm_axi_rready),
    .pwm_axi_aclk(pwm_axi_aclk),
    .pwm_axi_aresetn(pwm_axi_aresetn)
  );
endmodule
