set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BLUE[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BLUE[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BLUE[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BLUE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GREEN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GREEN[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GREEN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GREEN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Store_Color[0]}]
set_property PACKAGE_PIN N19 [get_ports {RED[3]}]
set_property PACKAGE_PIN J19 [get_ports {RED[2]}]
set_property PACKAGE_PIN H19 [get_ports {RED[1]}]
set_property PACKAGE_PIN G19 [get_ports {RED[0]}]
set_property PACKAGE_PIN D17 [get_ports {GREEN[3]}]
set_property PACKAGE_PIN G17 [get_ports {GREEN[2]}]
set_property PACKAGE_PIN H17 [get_ports {GREEN[1]}]
set_property PACKAGE_PIN J17 [get_ports {GREEN[0]}]
set_property PACKAGE_PIN J18 [get_ports {BLUE[3]}]
set_property PACKAGE_PIN K18 [get_ports {BLUE[2]}]
set_property PACKAGE_PIN L18 [get_ports {BLUE[1]}]
set_property PACKAGE_PIN N18 [get_ports {BLUE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports H_push]
set_property IOSTANDARD LVCMOS33 [get_ports Push]
set_property IOSTANDARD LVCMOS33 [get_ports HSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports V_push]
set_property IOSTANDARD LVCMOS33 [get_ports VSYNC]
set_property PACKAGE_PIN R19 [get_ports VSYNC]
set_property PACKAGE_PIN P19 [get_ports HSYNC]
set_property PACKAGE_PIN W17 [get_ports {B[3]}]
set_property PACKAGE_PIN W16 [get_ports {B[2]}]
set_property PACKAGE_PIN V16 [get_ports {B[1]}]
set_property PACKAGE_PIN V17 [get_ports {B[0]}]
set_property PACKAGE_PIN W15 [get_ports {G[0]}]
set_property PACKAGE_PIN V15 [get_ports {G[1]}]
set_property PACKAGE_PIN W14 [get_ports {G[2]}]
set_property PACKAGE_PIN W13 [get_ports {G[3]}]
set_property PACKAGE_PIN V2 [get_ports {R[0]}]
set_property PACKAGE_PIN T3 [get_ports {R[1]}]
set_property PACKAGE_PIN T2 [get_ports {R[2]}]
set_property PACKAGE_PIN R3 [get_ports {R[3]}]
set_property PACKAGE_PIN U16 [get_ports {Store_Color[0]}]
set_property PACKAGE_PIN E19 [get_ports {Store_Color[1]}]
set_property PACKAGE_PIN U19 [get_ports {Store_Color[2]}]
set_property PACKAGE_PIN V19 [get_ports {Store_Color[3]}]
set_property PACKAGE_PIN W18 [get_ports {Store_Color[4]}]
set_property PACKAGE_PIN U15 [get_ports {Store_Color[5]}]
set_property PACKAGE_PIN U14 [get_ports {Store_Color[6]}]
set_property PACKAGE_PIN V14 [get_ports {Store_Color[7]}]
set_property PACKAGE_PIN V13 [get_ports {Store_Color[8]}]
set_property PACKAGE_PIN V3 [get_ports {Store_Color[9]}]
set_property PACKAGE_PIN W3 [get_ports {Store_Color[10]}]
set_property PACKAGE_PIN U3 [get_ports {Store_Color[11]}]
set_property PACKAGE_PIN W5 [get_ports clock]
set_property PACKAGE_PIN R2 [get_ports reset]
set_property PACKAGE_PIN U18 [get_ports Push]
set_property PACKAGE_PIN W19 [get_ports H_push]
set_property PACKAGE_PIN T17 [get_ports V_push]
create_clock -period 10.000 -name Clock -waveform {0.000 5.000} [get_ports clock]
