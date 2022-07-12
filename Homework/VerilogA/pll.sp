simulator lang=spectre

ahdl_include "PFD.va"
ahdl_include "CP.va"
ahdl_include "LF.va"
ahdl_include "VCO.va"
ahdl_include "sin2pulse.va"
ahdl_include "frediv.va"

xPFD (Fin Fb siginc sigdec) PFD
xCP (siginc sigdec LF_in 0 vout1 vout2 vout3 vout4) CP
xLF (LF_in LF_out) LF
xVCO (LF_out VCO_out) VCO
xsin2pulse (VCO_out pulse_out) sin2pulse
xfrediv (pulse_out Fb) frediv

vpulse1 (Fin 0) vsource type=pulse val0=gnd val1=1.8 period=20n width=10n rise=1n fall=1n
OscResp tran step=0.01n stop=10u
.probe V(LF_out) 

.protect
.unprotect
.op