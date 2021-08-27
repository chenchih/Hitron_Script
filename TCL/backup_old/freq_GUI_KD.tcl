package require tile
package require Tk
package require img::png
package require netsnmptcl
# w and height
wm minsize . 800 600
wm maxsize . 800 600
wm geometry . 700x700
wm title . "tune frequency_NA  !! 102.7.24"

#proc SeeEnd {string} {	
#	.txt insert end "$string"
#	.txt see end
#	update
#	write_log $string
#}

#proc write_log {string} {	
#	set outfile [open "upgrade_log/$::time.txt" a]	
#	puts $outfile "$string"
#	close $outfile

#}

#set frequency not working for hitron mib
proc run_case {} {

	#set ::time [clock format [clock seconds] -format "%Y%m%d--%H%M%S"]
	#file mkdir upgrade_log
	set IP [.ent get]
	set tftp_ip [.ent1 get]
	set str [.ent2 get]
	#will clear result 
	#.txt delete 0.0 end
#	set upgrade_SW [.ent3 get]
	#.txt delete 0.0 end
	#after 200
	#if {[catch {set ::txt [snmp_get -v 2c -c private $IP .n.0]} msg]} {
	#	SeeEnd "$msg\n"		
	#	} else {
	#			SeeEnd "sysDescr : $::txt\n"}			
	#if {[catch {set ::txt [snmp_get -v 2c -c private $IP .1.3.6.1.4.1.35604.1.19.3.3.201.0]} msg]} {
	#	SeeEnd "$msg\n"		
	#	} else {
	#			SeeEnd "cmConfigGwWiFiVersion : $::txt\n"}
		
	#snmp_set  -v 2c -c private $IP .1.3.6.1.2.1.69.1.3.1.0 a "$tftp_ip"
	#snmp_set  -v 2c -c private $IP .1.3.6.1.4.1.35604.2.2.1.1  "$tftp_ip"
	#show current frequency
	#.txt insert end "current frequency: [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.4.1.35604.2.2.1.0]\n"
		#set current frequency
	.txt insert end "insert frequency: [snmp_set  -v 2c -c private $IP .1.3.6.1.2.1.10.127.1.1.1.1.2.3 i "$tftp_ip"]\n"
	.txt insert end "---------------------------------------------------------------------------\n"
	after 200
	#snmp_set  -v 2c -c private $IP .1.3.6.1.2.1.69.1.3.2.0 s "$upgrade_SW"
	#after 200
	#snmp_set  -v 2c -c private $IP .1.3.6.1.2.1.69.1.3.3.0 i 1
	#after 1000
	

}
#show button
proc run_case1 {} {
	#set ::time [clock format [clock seconds] -format "%Y%m%d--%H%M%S"]
	#file mkdir upgrade_log
	set IP [.ent get]
#	set tftp_ip [.ent1 get]
#	set str [.ent2 get]
	#.txt delete 0.0 end
	.txt insert end "current frequency: [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.10.127.1.1.1.1.2.3]\n"
	.txt insert end "---------------------------------------------------------------------------\n"
	.txt insert end "\n"
	after 200
	
#set ::txt4  [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.4.1.35604.2.2.1.0]

#cfg 
set ::txt5 [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.69.1.4.5.0] "\""] 1 ]
#cm
#set ::txt6 [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.2.2.1.6.2] "\""] 1 ]
# start
set CMmac [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.2.2.1.6.2] "\""] 1 ]
	
	#########using regular expression but will have problem ##################
	#set CMmac [snmp_get -t 5 -Oqv $IP  private  .1.3.6.1.2.1.2.2.1.6.2]
	#regexp {([\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+)} $CMmac match ::txt11 
		#puts $::txt11
		#set ::txt6  [string toupper [ regsub -all {\s} $CMmac  {:}]] 
		# $CMmac  {:}
		#set ::txt6 "[regsub -all {\s} $CMmac {:}]"
# ####################using join############
set ::txt6 [join $CMmac {:}] 

#end

#gw mac		
#set ::txt7  [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.17.4.3.1.1.92.53.59.166.4.20]
set ::txt7 [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.2.2.1.6.1] "\""] 1 ]
set ::txt7 [join $::txt7 {:}] 

#MTA mac		
set ::txt8 [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.2.2.1.6.16] "\""] 1 ]
set ::txt8 [join $::txt8 {:}] 
#WebGUI ACC#1  not webgui for KD
# set ::txt9 [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.4.1.8595.20.16.1.1.1.1.3.1] "\""] 1 ]


#2.4G
set ::txt10	 [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.4.1.8595.80211.5.1.14.1.3.1] "\""] 1 ]
		
#5G no 5G
#set ::txt11	 [lindex [split [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.4.1.8595.802115.5.1.14.1.3.1] "\""] 1 ]
		}	

		
#webGUI pwd set
proc run_pwdset {} {
	#set ::time [clock format [clock seconds] -format "%Y%m%d--%H%M%S"]
	#file mkdir upgrade_log
		set IP [.ent get]
	set guipasswd [.ent71 get]
	#set tftp_ip [.ent1 get]
	#set str [.ent2 get]
#	.txt delete 0.0 end
	

#.txt insert end "insert frequency: [snmp_set -t 5 -Oqv ::$IP private .1.3.6.1.4.1.8595.20.16.1.1.1.1.4.1 s $::txt91]\n"
#.txt insert end "insert frequency: [snmp_set -t 5 -Oqv ::$IP private .1.3.6.1.4.1.8595.20.16.2.1.0 i 1 ]\n"
#	.txt insert end "---------------------------------------------------------------------------\n"

#.txt insert end "insert frequency: [snmp_set  -v 2c -c private $IP .1.3.6.1.2.1.10.127.1.1.1.1.2.3 i "$tftp_ip"]\n"
.txt insert end "--------Set WEB GUI PWD:-------------------------\n"
#.txt insert end "current frequency: [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.2.1.10.127.1.1.1.1.2.3]\n"
.txt insert end "insert WEBGUI PWD: [snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.20.16.1.1.1.1.4.1 s "$guipasswd"]\n"
.txt insert end "insert frequency: [snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.20.16.2.1.0 i 1 ]\n"
.txt insert end "---------------------------------------------------------------------------\n"
.txt insert end "\n"
	after 200

	
		
		

	
}

proc SET_2.4G {} {
	set IP [.ent get]
	set xxxGpasswd [.ent81 get]
	.txt insert end "--------Set 2.4G SSID PWD:-------------------------\n"
.txt insert end "insert wifi 2.4G password: [snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.80211.5.2.4.1.2.1 s "$xxxGpasswd"]\n"
#.txt insert end "insert 2.4G password : [snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.80211.100.0 i 1 ]\n"
snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.80211.100.0 i 1 
.txt insert end "---------------------------------------------------------------------------\n"
.txt insert end "\n"
	after 200
	}
	
	#hitronWifiBssWpaPreSharedKey
proc SET_5G {} {
	set IP [.ent get]
	set xxxGpasswd [.ent91 get]
	.txt insert end "--------Set 5G SSID PWD:-------------------------\n"
	
.txt insert end "insert wifi 5G password: [snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.802115.5.2.4.1.2.1 s "$xxxGpasswd"]\n"
#.txt insert end "insert 5G password: [snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.802115.100.0 i 1 ]\n"
snmp_set -t 5 -Oqv $IP private .1.3.6.1.4.1.8595.802115.100.0 i 1
.txt insert end "---------------------------------------------------------------------------\n"
.txt insert end "\n"
	after 200
}
	
proc clear_txt {} {
.txt delete 0.0 end
	after 200
}
	

set f1 [font create -family "Times" -size 20]
frame .frm -relief groove
set ::login_value1 0
set ::login_value2 0
ttk::checkbutton .chk -text "case 1" -onvalue 1 -offvalue 0 -variable ::login_value1 
ttk::checkbutton .chk1 -text "case 2" -onvalue 1 -offvalue 0 -variable ::login_value2
label .lab -text "set frequency" -font [font create -family "Times" -size 20] -image [image create photo -file "\photo/logo1.png"] -compound left
label .lab1 -text "CM IP" -font [font create -family "Times" -size 12]
label .lab2 -text "frequency" -font [font create -family "Times" -size 12  ]
label .lab5 -text "FREQ EX: 336000000" -font [font create -family "Times bold" -size 12  ] -foreground red

label .lab3 -text "MTA_Config" -font [font create -family "Times" -size 12]
label .lab4 -text "cfg file" -font [font create -family "Times" -size 12]
label .lab6 -text "CM MAC" -font [font create -family "Times" -size 12]
label .lab7 -text "GW MAC" -font [font create -family "Times" -size 12]
label .lab8 -text " MTA MAC" -font [font create -family "Times" -size 12]
label .lab9 -text " GUI Acc" -font [font create -family "Times" -size 12]
label .lab91 -text " GUI Pwd set" -font [font create -family "Times" -size 12]
label .lab10 -text "2.4G" -font [font create -family "Times" -size 12]
label .lab11 -text "5G" -font [font create -family "Times" -size 12]
label .lab10A -text " 2.4 Pwd set" -font [font create -family "Times" -size 12]
label .lab11A -text " 5g Pwd set" -font [font create -family "Times" -size 12]
entry .ent -textvariable ::txt2 -font [font create -family "Times" -size 14]
entry .ent1 -textvariable ::txt3 -font [font create -family "Times" -size 14]
entry .ent2 -textvariable ::txt4 -font [font create -family "Times" -size 12]
entry .ent3 -textvariable ::txt5 -font [font create -family "Times" -size 12]
entry .ent4 -textvariable ::txt6 -font [font create -family "Times" -size 12]
entry .ent5 -textvariable ::txt7 -font [font create -family "Times" -size 12]
entry .ent6 -textvariable ::txt8 -font [font create -family "Times" -size 12]
entry .ent7 -textvariable ::txt9 -font [font create -family "Times" -size 12]
entry .ent71 -textvariable ::txt91 -font [font create -family "Times" -size 12]
entry .ent8 -textvariable ::txt10 -font [font create -family "Times" -size 12]
entry .ent81 -textvariable ::txt10A -font [font create -family "Times" -size 12]
entry .ent9 -textvariable ::txt11 -font [font create -family "Times" -size 12]
entry .ent91 -textvariable ::txt11A -font [font create -family "Times" -size 12]
set ::txt2 "192.168.50.55"
set ::txt3 "336000000"
set ::txt91 "1234567890"
set ::txt10A "1234567890"
#5g kd no 5g
#set ::txt11A "1234567890aa"
#set ::txt4 "CH6643-3.5.0.17-SH"
#set ::txt5 "CH6643-3.5.0.17-SH-TW.NNEMN.p7"
ttk::button .but1 -text "SHOW" -command "run_case1" -default "active"
ttk::button .but2 -text "RUN" -command "run_case" -default "active"
ttk::button .but3 -text "pwd set" -command "run_pwdset" -default "active"
ttk::button .but4 -text "2.4_SET" -command "SET_2.4G" -default "active"
ttk::button .but5 -text "5g_SET" -command "SET_5G" -default "active"
ttk::button .but6 -text "clear" -command "clear_txt" -default "active"
bind .ent <Return> {run_case}
#bind . <Return> {.but1 invoke}
frame .textarea
#text .txt -width 80 -height 20	-yscrollcommand ".srl_y set" -xscrollcommand ".srl_x set"
text .txt	-yscrollcommand ".srl_y set" -xscrollcommand ".srl_x set"
scrollbar .srl_y -command ".txt yview" -orient v
scrollbar .srl_x -command ".txt xview" -orient h
place .lab -in .frm -x 50 -y 30 -width 500 -height 80
place .ent -in .frm -x 70 -y 120 -width 250 -height 30
place .ent1 -in .frm -x 70 -y 150 -width 250 -height 30
#textbox
place .ent2 -in .frm -x 120 -y 210 -width 180 -height 30 
place .ent3 -in .frm -x 360 -y 210 -width 180 -height 30
place .ent4 -in .frm -x 120 -y 250 -width 180 -height 30
place .ent5 -in .frm -x 120 -y 290 -width 180 -height 30
place .ent6 -in .frm -x 120 -y 330 -width 180 -height 30
place .ent7 -in .frm -x 380 -y 250 -width 150 -height 30
place .ent71 -in .frm -x 630 -y 250 -width 100 -height 30


#2.4G
place .ent8 -in .frm -x 360 -y 290 -width 180 -height 30
place .ent81 -in .frm -x 630 -y 295 -width 100 -height 30
#5g
place .ent9 -in .frm -x 360 -y 330 -width 180 -height 30
place .ent91 -in .frm -x 630 -y 335 -width 100 -height 30
#word or label
place .lab1 -in .frm -x 00 -y 120 -width 70 -height 30 
place .lab2 -in .frm -x 00 -y 150 -width 70 -height 30
place .lab5 -in .frm -x 320 -y 150 -width 150 -height 30
place .lab3 -in .frm -x -18 -y 210 -width 160 -height 30
place .lab4 -in .frm -x 280 -y 210 -width 100 -height 30
place .lab6 -in .frm -x 0 -y 250 -width 100 -height 30
place .lab7 -in .frm -x 0 -y 290 -width 100 -height 30
place .lab8 -in .frm -x 0 -y 330 -width 100 -height 30
place .lab9 -in .frm -x 290 -y 250 -width 100 -height 30
place .lab91 -in .frm -x 530 -y 250 -width 100 -height 30
#2.4G
place .lab10 -in .frm -x 290 -y 290 -width 100 -height 30
#5G
#place .lab11 -in .frm -x 290 -y 330 -width 100 -height 30

#2.4G SET PWD
place .lab10A -in .frm -x 540 -y 295 -width 100 -height 30
#5G SET PWD
#place .lab11A -in .frm -x 540 -y 330 -width 100 -height 30


place .but1 -in .frm  -x 570 -y 120 -width 50 -height 25
place .but2 -in .frm  -x 570 -y 150 -width 50 -height 25
place .but3 -in .frm  -x 750 -y 250 -width 50 -height 25
#place .chk -in	.frm	-x 600 -y 20 -width 100 -height 30
#place .chk1 -in	.frm	-x 600 -y 50 -width 100 -height 30
#2.4g set buttom
place .but4 -in .frm  -x 750 -y 295 -width 50 -height 25

#5g set buttom
place .but5 -in .frm  -x 750 -y 335 -width 50 -height 25

#clear bottom
place .but6 -in .frm  -x 550 -y 570 -width 50 -height 25

place .frm -x 0 -y 0

grid .txt   -in .textarea -row 1 -column 1
grid .srl_y -in .textarea -row 1 -column 2 -sticky ns
grid .srl_x -in .textarea -row 2 -column 1 -sticky ew
place .textarea -x 20 -y 450
	
	