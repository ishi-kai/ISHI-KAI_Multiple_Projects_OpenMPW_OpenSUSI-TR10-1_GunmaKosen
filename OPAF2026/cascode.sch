v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -110 210 -110 {lab=#net1}
N 80 -160 80 -140 {lab=VDD}
N 80 -160 250 -160 {lab=VDD}
N 250 -160 250 -140 {lab=VDD}
N 160 -110 160 -60 {lab=#net1}
N 80 -60 160 -60 {lab=#net1}
N 80 -80 80 -60 {lab=#net1}
N -10 50 40 50 {lab=GND}
N 80 -60 80 20 {lab=#net1}
N 250 -80 250 20 {lab=#net2}
N 80 80 80 120 {lab=#net3}
N 80 120 250 120 {lab=#net3}
N 250 80 250 120 {lab=#net3}
N 80 50 100 50 {lab=VSS}
N 230 50 250 50 {lab=VSS}
N 60 -110 80 -110 {lab=VDD}
N 60 -160 60 -110 {lab=VDD}
N 60 -160 80 -160 {lab=VDD}
N 250 -110 270 -110 {lab=VDD}
N 270 -160 270 -110 {lab=VDD}
N 250 -160 270 -160 {lab=VDD}
N 340 -110 400 -110 {lab=#net2}
N 440 -160 440 -140 {lab=VDD}
N 270 -160 440 -160 {lab=VDD}
N 440 -80 440 -50 {lab=#net4}
N -100 -160 60 -160 {lab=VDD}
N -100 -160 -100 -140 {lab=VDD}
N -60 210 130 210 {lab=#net5}
N -100 140 40 140 {lab=#net5}
N 40 140 40 210 {lab=#net5}
N 40 140 340 140 {lab=#net5}
N 340 140 340 210 {lab=#net5}
N 340 210 400 210 {lab=#net5}
N 440 50 510 50 {lab=#net4}
N 160 -190 160 -160 {lab=VDD}
N -100 240 -100 280 {lab=VSS}
N -100 280 440 280 {lab=VSS}
N 440 240 440 280 {lab=VSS}
N -120 210 -100 210 {lab=VSS}
N -120 210 -120 260 {lab=VSS}
N -120 260 -100 260 {lab=VSS}
N 170 240 170 280 {lab=VSS}
N 170 210 200 210 {lab=VSS}
N 200 210 200 250 {lab=VSS}
N 170 250 200 250 {lab=VSS}
N 440 210 460 210 {lab=VSS}
N 460 210 460 260 {lab=VSS}
N 440 260 460 260 {lab=VSS}
N 170 280 170 320 {lab=VSS}
N 440 -110 480 -110 {lab=VDD}
N 480 -160 480 -110 {lab=VDD}
N 440 -160 480 -160 {lab=VDD}
N 100 50 100 280 {lab=VSS}
N 230 50 230 280 {lab=VSS}
N 440 150 440 180 {lab=#net6}
N 440 20 440 90 {lab=#net4}
N 440 -50 440 -40 {lab=#net4}
N -100 90 -100 180 {lab=#net5}
N 250 -60 300 -60 {lab=#net2}
N 440 -40 440 20 {lab=#net4}
N -100 -80 -100 -30 {lab=#net7}
N -100 -30 -100 30 {lab=#net7}
N -270 440 -270 480 {lab=GND}
N -180 440 -180 480 {lab=GND}
N 300 -60 340 -60 {lab=#net2}
N 340 -110 340 -60 {lab=#net2}
N 340 60 440 60 {lab=#net4}
N 300 60 340 60 {lab=#net4}
N 300 50 300 60 {lab=#net4}
N 290 50 300 50 {lab=#net4}
N 510 50 510 70 {lab=#net4}
N 510 130 510 160 {lab=GND}
C {devices/code_shown.sym} -480 60 0 0 {name=control only_toplevel=false value=".control
save all
op
show m
print I(Vi1) I(Vi2) I(Vi3) I(VDD)
.endc"}
C {devices/code.sym} -490 -90 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {TR-1umLIB/MP.sym} 210 -110 0 0 {name=XM1
model=PMOS
w=50u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 120 -110 0 1 {name=XM2
model=PMOS
w=50u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 40 50 0 0 {name=XM3
model=NMOS
w=115u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 290 50 0 1 {name=XM4
model=NMOS
w=115u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 400 -110 0 0 {name=XM5
model=PMOS
w=1360u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 130 210 0 0 {name=XM6
model=NMOS
w=175u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} 400 210 0 0 {name=XM7
model=NMOS
w=2440u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MN.sym} -60 210 0 1 {name=XM8
model=NMOS
w=20u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/vsource.sym} -270 410 0 0 {name=Vdd value=2.5}
C {devices/vsource.sym} -180 410 2 0 {name=Vss value=2.5}
C {devices/gnd.sym} -270 480 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -180 480 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -270 380 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -180 380 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 160 -190 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 320 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -10 50 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 510 100 0 0 {name=C2
m=1
value=500p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 510 160 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} -100 60 0 0 {name=Vi1 savecurrent=true}
C {devices/ammeter.sym} 170 150 0 0 {name=Vi2 savecurrent=true}
C {devices/ammeter.sym} 440 120 0 0 {name=Vi3 savecurrent=true}
C {devices/res.sym} -100 -110 0 0 {name=R1
value=58.70k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 340 -30 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 340 30 0 0 {name=C1
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
