
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:142

00:00:182	
448.2892	
181.180Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/utils_1/imports/synth_1/fsm.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2_
]C:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/utils_1/imports/synth_1/fsm.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top fsm -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
1144Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:16 . Memory (MB): peak = 1283.969 ; gain = 440.258
h px� 
�
synthesizing module '%s'638*oasys2
fsm2U
QC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/2.vhd2
528@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
i2U
QC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/2.vhd2
808@Z8-614h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

driver7seg2\
ZC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/driver7seg.vhd2
52
ssd2

driver7seg2U
QC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/2.vhd2
1728@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

driver7seg2^
ZC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/driver7seg.vhd2
158@Z8-638h px� 
�
default block is never used226*oasys2^
ZC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/driver7seg.vhd2
578@Z8-226h px� 
�
default block is never used226*oasys2^
ZC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/driver7seg.vhd2
708@Z8-226h px� 
�
default block is never used226*oasys2^
ZC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/driver7seg.vhd2
888@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

driver7seg2
02
12^
ZC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/driver7seg.vhd2
158@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
fsm2
02
12U
QC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/sources_1/new/2.vhd2
528@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:15 ; elapsed = 00:00:24 . Memory (MB): peak = 1391.758 ; gain = 548.047
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:25 . Memory (MB): peak = 1391.758 ; gain = 548.047
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:25 . Memory (MB): peak = 1391.758 ; gain = 548.047
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0232

1391.7582
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2W
SC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/constrs_1/new/sim.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2W
SC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/constrs_1/new/sim.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2U
SC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.srcs/constrs_1/new/sim.xdc2
.Xil/fsm_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1483.5742
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.2092

1483.5742
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:32 ; elapsed = 00:00:54 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:32 ; elapsed = 00:00:54 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:32 ; elapsed = 00:00:54 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
fsmZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                   start |                          0000001 |                              000
h p
x
� 
y
%s
*synth2a
_                 get_rnd |                          0000010 |                              001
h p
x
� 
y
%s
*synth2a
_                  led_on |                          0000100 |                              010
h p
x
� 
y
%s
*synth2a
_                   sw_on |                          0001000 |                              011
h p
x
� 
y
%s
*synth2a
_                  sw_off |                          0010000 |                              100
h p
x
� 
y
%s
*synth2a
_                 led_off |                          0100000 |                              101
h p
x
� 
y
%s
*synth2a
_                   count |                          1000000 |                              110
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2	
one-hot2
fsmZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:33 ; elapsed = 00:00:56 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 8     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
_
+design %s has port %s driven by constant %s3447*oasys2
fsm2
dp2
1Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:01:03 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:50 ; elapsed = 00:01:15 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:52 ; elapsed = 00:01:17 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:53 ; elapsed = 00:01:17 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:01:03 ; elapsed = 00:01:27 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:03 ; elapsed = 00:01:28 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:03 ; elapsed = 00:01:28 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:03 ; elapsed = 00:01:28 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:03 ; elapsed = 00:01:28 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:03 ; elapsed = 00:01:28 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    45|
h px� 
2
%s*synth2
|3     |LUT1   |     8|
h px� 
2
%s*synth2
|4     |LUT2   |   115|
h px� 
2
%s*synth2
|5     |LUT3   |     3|
h px� 
2
%s*synth2
|6     |LUT4   |    26|
h px� 
2
%s*synth2
|7     |LUT5   |    81|
h px� 
2
%s*synth2
|8     |LUT6   |    48|
h px� 
2
%s*synth2
|9     |MUXF7  |     2|
h px� 
2
%s*synth2
|10    |MUXF8  |     1|
h px� 
2
%s*synth2
|11    |FDCE   |   231|
h px� 
2
%s*synth2
|12    |FDPE   |     1|
h px� 
2
%s*synth2
|13    |FDRE   |     2|
h px� 
2
%s*synth2
|14    |IBUF   |    18|
h px� 
2
%s*synth2
|15    |OBUF   |    28|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:03 ; elapsed = 00:01:28 . Memory (MB): peak = 1483.574 ; gain = 639.863
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:43 ; elapsed = 00:01:12 . Memory (MB): peak = 1483.574 ; gain = 548.047
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:03 ; elapsed = 00:01:29 . Memory (MB): peak = 1483.574 ; gain = 639.863
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:012
00:00:00.0212

1483.5742
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
48Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1483.5742
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

47406100Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
312
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:142

00:01:462

1483.5742

1032.312Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0492

1483.5742
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2O
MC:/Users/coste/OneDrive/Desktop/SCID/project_2/project_2.runs/synth_1/fsm.dcpZ17-1381h px� 
z
%s4*runtcl2^
\Executing : report_utilization -file fsm_utilization_synth.rpt -pb fsm_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Apr  3 19:10:13 2024Z17-206h px� 


End Record