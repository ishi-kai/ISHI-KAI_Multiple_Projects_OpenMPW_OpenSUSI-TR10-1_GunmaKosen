v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -260 330 -260 {
lab=in}
N 220 -260 220 -250 {
lab=in}
N 80 -350 390 -350 {
lab=#net1}
N 80 -300 80 -260 {
lab=#net1}
N 80 -200 80 -100 {
lab=GND}
N 80 -60 80 -40 {
lab=GND}
N 80 -350 80 -300 {
lab=#net1}
N 450 -240 490 -240 {
lab=out}
N 490 -240 490 -220 {
lab=out}
N 490 -160 490 -110 {
lab=GND}
N 390 -180 390 -100 {
lab=#net2}
N 390 -350 390 -300 {
lab=#net1}
N 270 -150 290 -150 {
lab=#net3}
N 270 -220 270 -190 {
lab=#net3}
N 270 -220 330 -220 {
lab=#net3}
N 470 -240 470 -170 {
lab=out}
N 270 -190 270 -150 {
lab=#net3}
N 270 -150 270 -130 {
lab=#net3}
N 350 -150 470 -150 {
lab=out}
N 470 -170 470 -150 {
lab=out}
N 490 -110 490 -60 {
lab=GND}
N 390 -100 390 -60 {
lab=#net2}
N 80 -100 80 -60 {
lab=GND}
N 210 -60 390 -60 {lab=#net2}
N 210 -150 210 -60 {lab=#net2}
N 140 -150 210 -150 {lab=#net2}
N 140 -150 140 -110 {lab=#net2}
N 270 -70 270 -50 {lab=GND}
N 470 -150 470 -130 {lab=out}
N 470 -70 470 -60 {lab=GND}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
show m
save all
ac dec 20 0.1 1e10
plot vdb(out)
plot vp(out)
plot I(VSS)
.endc"}
C {devices/vsource.sym} 80 -230 0 0 {name=Vdd value=2.5}
C {devices/vsource.sym} 220 -220 0 0 {name=Vinp value="AC 1"}
C {devices/gnd.sym} 80 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -240 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} -470 -80 0 0 {name=measure only_toplevel=false value=".measure ac gain find vdb(out) at=0.1
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at=9.34072e6"}
C {devices/capa.sym} 490 -190 0 0 {name=C1
m=1
value=500pF
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 220 -260 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/res.sym} 320 -150 1 0 {name=R1
value=1T
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 270 -100 0 0 {name=C2
m=1
value=10m
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -480 -450 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/vsource.sym} 140 -80 2 0 {name=Vss value=2.5}
C {devices/gnd.sym} 140 -50 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 220 -190 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 270 -50 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 490 -60 0 0 {name=l5 lab=GND}
C {devices/res.sym} 470 -100 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 470 -60 0 0 {name=l6 lab=GND}
C {/home/tsukiji_lab04/OPAF2026/opamp2.sym} 390 -240 0 0 {name=x1}
