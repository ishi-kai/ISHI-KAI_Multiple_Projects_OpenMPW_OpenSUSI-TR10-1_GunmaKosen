v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -190 -520 -190 -480 {lab=GND}
N -100 -520 -100 -480 {lab=GND}
N 130 -980 300 -980 {lab=GND}
N 130 -980 130 -900 {lab=GND}
N 260 -940 300 -940 {lab=#net1}
N 260 -940 260 -830 {lab=#net1}
N 260 -860 320 -860 {lab=#net1}
N 260 -770 260 -750 {lab=GND}
N 530 -820 530 -780 {lab=GND}
N 420 -960 530 -960 {lab=Vos}
N 530 -960 530 -880 {lab=Vos}
N 460 -960 460 -860 {lab=Vos}
N 380 -860 460 -860 {lab=Vos}
N 110 -640 280 -640 {lab=Vin2}
N 240 -600 280 -600 {lab=#net2}
N 240 -600 240 -490 {lab=#net2}
N 240 -520 300 -520 {lab=#net2}
N 240 -430 240 -410 {lab=GND}
N 510 -480 510 -440 {lab=GND}
N 400 -620 510 -620 {lab=Vout2}
N 510 -620 510 -540 {lab=Vout2}
N 440 -620 440 -520 {lab=Vout2}
N 360 -520 440 -520 {lab=Vout2}
N 110 -570 110 -560 {lab=GND}
N 110 -640 110 -630 {lab=Vin2}
N 110 -280 280 -280 {lab=Vin1}
N 240 -240 280 -240 {lab=#net3}
N 240 -240 240 -130 {lab=#net3}
N 240 -160 300 -160 {lab=#net3}
N 240 -70 240 -50 {lab=GND}
N 510 -120 510 -80 {lab=GND}
N 400 -260 510 -260 {lab=Vout1}
N 510 -260 510 -180 {lab=Vout1}
N 440 -260 440 -160 {lab=Vout1}
N 360 -160 440 -160 {lab=Vout1}
N 110 -210 110 -200 {lab=GND}
N 110 -280 110 -270 {lab=Vin1}
N 440 -70 440 -50 {lab=GND}
N 440 -160 440 -130 {lab=Vout1}
N 440 -430 440 -410 {lab=GND}
N 440 -520 440 -490 {lab=Vout2}
N 460 -770 460 -750 {lab=GND}
N 460 -860 460 -830 {lab=Vos}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
op
show m
save all
tran 1n 1000n
plot v(Vin1) V(Vout1)
plot v(Vin2) V(Vout2)
plot I(VSS)
.endc"}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".param half=2.5 vp=1
.tran 0.1u 200u 0
.meas tran vps find par('V(Vout1)-V(Vos)') at=0
.meas tran vpt find par('V(Vout1)-V(Vos)') at=1900n
.meas tran vns find par('V(Vout2)-V(Vos)') at=0
.meas tran vnt find par('V(Vout2)-V(Vos)') at=1900n
.meas tran srr1 deriv par('V(Vout1)-V(Vos)') when par('V(Vout1)-V(Vos)')=-1
.meas tran srr2 deriv par('V(Vout1)-V(Vos)') when par('V(Vout1)-V(Vos)')=0
.meas tran srr3 deriv par('V(Vout1)-V(Vos)') when par('V(Vout1)-V(Vos)')=1
.meas tran srr param='(srr1+srr2+srr3)/3'
.meas tran srf1 deriv par('V(Vout2)-V(Vos)') when par('V(Vout2)-V(Vos)')=1
.meas tran srf2 deriv par('V(Vout2)-V(Vos)') when par('V(Vout2)-V(Vos)')=0
.meas tran srf3 deriv par('V(Vout2)-V(Vos)') when par('V(Vout2)-V(Vos)')=-1
.meas tran srf param='(srf1+srf2+srf3)/3'
.meas tran sr param='min(abs(srr),abs(srf))'"}
C {devices/code.sym} -480 -450 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/vsource.sym} -190 -550 0 0 {name=Vdd value=2.5}
C {devices/vsource.sym} -100 -550 2 0 {name=Vss1 value=2.5}
C {devices/gnd.sym} -190 -480 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -100 -480 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -190 -580 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -100 -580 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {/home/tsukiji_lab04/OPAF2026/opamp2.sym} 360 -960 0 0 {name=x2}
C {devices/gnd.sym} 130 -900 0 0 {name=l9 lab=GND}
C {devices/res.sym} 350 -860 1 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 260 -800 0 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 260 -750 0 0 {name=l10 lab=GND}
C {devices/capa.sym} 530 -850 0 0 {name=C3
m=1
value=500p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 530 -780 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 530 -960 0 1 {name=p5 sig_type=std_logic lab=Vos}
C {devices/lab_pin.sym} 360 -1020 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -900 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {/home/tsukiji_lab04/OPAF2026/opamp2.sym} 340 -620 0 0 {name=x1}
C {devices/gnd.sym} 110 -560 0 0 {name=l1 lab=GND}
C {devices/res.sym} 330 -520 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 240 -460 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 240 -410 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 510 -510 0 0 {name=C1
m=1
value=500p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 510 -440 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 510 -620 0 1 {name=p1 sig_type=std_logic lab=Vout2}
C {devices/lab_pin.sym} 340 -680 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -560 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 110 -600 0 0 {name=Vin2 value="pulse(\{-vp\} \{vp\} 100n \{vp*0.01n\} \{vp*0.01n\} 300u 400u 1)"}
C {/home/tsukiji_lab04/OPAF2026/opamp2.sym} 340 -260 0 0 {name=x3}
C {devices/gnd.sym} 110 -200 0 0 {name=l4 lab=GND}
C {devices/res.sym} 330 -160 1 0 {name=R5
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 240 -100 0 0 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 240 -50 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 510 -150 0 0 {name=C2
m=1
value=500p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 510 -80 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 510 -260 0 1 {name=p9 sig_type=std_logic lab=Vout1}
C {devices/lab_pin.sym} 340 -320 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -200 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 110 -240 0 0 {name=Vin1 value="pulse(\{vp\} \{-vp\} 100n \{vp*0.01n\} \{vp*0.01n\} 300u 400u 1)"}
C {devices/lab_pin.sym} 110 -640 0 1 {name=p12 sig_type=std_logic lab=Vin2}
C {devices/lab_pin.sym} 110 -280 0 1 {name=p13 sig_type=std_logic lab=Vin1}
C {devices/res.sym} 440 -100 0 0 {name=R7
value=2k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 440 -50 0 0 {name=l12 lab=GND}
C {devices/res.sym} 440 -460 0 0 {name=R8
value=2k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 440 -410 0 0 {name=l13 lab=GND}
C {devices/res.sym} 460 -800 0 0 {name=R9
value=2k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 460 -750 0 0 {name=l14 lab=GND}
