*8 bits FA
.global Vdd gnd
Vdd vdd gnd 1.8V

*Subcircuit 定義2 bit full adder subckt
.subckt adder Ain Bin Cin Sum Cout
MP_1 DP_1 Ain  Vdd  Vdd P_18 L=0.18u W=2u
MP_2 DP_2 Bin  DP_1 Vdd P_18 L=0.18u W=2u 
MN_1 DP_2 Ain  Bin  gnd N_18 L=0.18u W=2u
MN_2 DP_2 Bin  Ain  gnd N_18 L=0.18u W=2u
MP_3 DP_3 Cin  Vdd  Vdd P_18 L=0.18u W=2u
MP_4 Sum  DP_2 DP_3 Vdd P_18 L=0.18u W=2u
MN_3 Sum  Cin  DP_2 gnd N_18 L=0.18u W=2u
MN_4 Sum  DP_2 Cin  gnd N_18 L=0.18u W=2u
MP_5 Cout DP_2 Cin  Vdd P_18 L=0.18u W=2u
MN_5 Ain  DP_2 Cout gnd N_18 L=0.18u W=2u
.ends

*Component 使用上面定義的subckt
xFA0 A0 B0 CIN   F0 Cout0 adder
xFA1 A1 B1 Cout0 F1 Cout1 adder
xFA2 A2 B2 Cout1 F2 Cout2 adder
xFA3 A3 B3 Cout2 F3 Cout3 adder
xFA4 A4 B4 Cout3 F4 Cout4 adder 
xFA5 A5 B5 Cout4 F5 Cout5 adder
xFA6 A6 B6 Cout5 F6 Cout6 adder
xFA7 A7 B7 Cout6 F7 Cout7 adder

*Source
*設定輸入電壓A0=1、B0=1、C0=0
vA0 A0 gnd pwl(0n 0V 0.9n 0V 1n 1.8v 1.9n 1.8v 2n 0V 2.9n 0V)
VB0 B0 gnd pwl(0n 0V 0.9n 0V 1n 1.8v 1.9n 1.8v 2n 0V 2.9n 0V)
vC0 CIN gnd 0V

*設定輸入電壓A1=1、B1=0
vA1 A1 gnd pwl(0n 0V 0.9n 0V 1n 1.8v 1.9n 1.8v 2n 0V 2.9n 0V)
VB1 B1 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v   2n 0V 2.9n 0V)

*設定輸入電壓A2=1、B2=0
vA2 A2 gnd pwl(0n 0V 0.9n 0V 1n 1.8v 1.9n 1.8v 2n 0V 2.9n 0V)
VB2 B2 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v   2n 0V 2.9n 0V)

*設定輸入電壓A3=1、B3=0
vA3 A3 gnd pwl(0n 0V 0.9n 0V 1n 1.8v 1.9n 1.8v 2n 0V 2.9n 0V)
VB3 B3 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v   2n 0V 2.9n 0V)

*設定輸入電壓A4=0、B4=0
vA4 A4 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)
VB4 B4 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)

*設定輸入電壓A5=0、B5=0
vA5 A5 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)
VB5 B5 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)

*設定輸入電壓A6=0、B6=0
vA6 A6 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)
VB6 B6 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)

*設定輸入電壓A7=0、B7=0
vA7 A7 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)
VB7 B7 gnd pwl(0n 0V 0.9n 0V 1n 0v   1.9n 0v 2n 0V 2.9n 0V)

.probe V(F7)
.probe V(Cout7)
.tran 0.1p 10ns 

.protect
.lib 'D:\Hspice\cic018.l'TT
.unprotect
.op
.end