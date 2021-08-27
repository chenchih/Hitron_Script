package require tile
package require Tk
package require img::png
package require netsnmptcl
wm minsize . 700 600
wm maxsize . 700 600
wm geometry . 700x600
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

proc run_case {} {
	#set ::time [clock format [clock seconds] -format "%Y%m%d--%H%M%S"]
	#file mkdir upgrade_log
	set IP [.ent get]
	set tftp_ip [.ent1 get]
	set str [.ent2 get]
	#will clear result 
	.txt delete 0.0 end
#	set upgrade_SW [.ent3 get]
	#.txt delete 0.0 end
	#after 200
	#if {[catch {set ::txt [snmp_get -v 2c -c private $IP .1.3.6.1.2.1.1.1.0]} msg]} {
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
	.txt insert end "insert frequency: [snmp_set  -v 2c -c private $IP .1.3.6.1.4.1.35604.2.2.1.0 i "$tftp_ip"]\n"
	.txt insert end "---------------------------------------------------------------------------\n"
	after 200
	#snmp_set  -v 2c -c private $IP .1.3.6.1.2.1.69.1.3.2.0 s "$upgrade_SW"
	#after 200
	#snmp_set  -v 2c -c private $IP .1.3.6.1.2.1.69.1.3.3.0 i 1
	#after 1000
	

}

proc run_case1 {} {
	#set ::time [clock format [clock seconds] -format "%Y%m%d--%H%M%S"]
	#file mkdir upgrade_log
	set IP [.ent get]
	set tftp_ip [.ent1 get]
	set str [.ent2 get]
	.txt delete 0.0 end
	.txt insert end "current frequency: [snmp_get -t 5 -Oqv $IP private  .1.3.6.1.4.1.35604.2.2.1.0]\n"
	.txt insert end "---------------------------------------------------------------------------\n"
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

#label .lab3 -text "version" -font [font create -family "Times" -size 12]
#label .lab4 -text "filename" -font [font create -family "Times" -size 12]
entry .ent -textvariable ::txt2 -font [font create -family "Times" -size 14]
entry .ent1 -textvariable ::txt3 -font [font create -family "Times" -size 14]
entry .ent2 -textvariable ::txt4 -font [font create -family "Times" -size 12]
entry .ent3 -textvariable ::txt5 -font [font create -family "Times" -size 12]
set ::txt2 "172.16.70.45"
set ::txt3 "336000000"
#set ::txt4 "CH6643-3.5.0.17-SH"
#set ::txt5 "CH6643-3.5.0.17-SH-TW.NNEMN.p7"
ttk::button .but1 -text "RUN" -command "run_case" -default "active"
ttk::button .but2 -text "SHOW" -command "run_case1" -default "active"
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
#place .ent2 -in .frm -x 280 -y 120 -width 270 -height 30
#place .ent3 -in .frm -x 280 -y 150 -width 270 -height 30
place .lab1 -in .frm -x 00 -y 120 -width 70 -height 30 
place .lab2 -in .frm -x 00 -y 150 -width 70 -height 30
place .lab5 -in .frm -x 320 -y 150 -width 150 -height 30
#place .lab3 -in .frm -x 220 -y 120 -width 50 -height 30
#place .lab4 -in .frm -x 220 -y 150 -width 50 -height 30
place .but1 -in .frm  -x 570 -y 120 -width 50 -height 25
place .but2 -in .frm  -x 570 -y 150 -width 50 -height 25
#place .chk -in	.frm	-x 600 -y 20 -width 100 -height 30
#place .chk1 -in	.frm	-x 600 -y 50 -width 100 -height 30
place .frm -x 0 -y 0

grid .txt   -in .textarea -row 1 -column 1
grid .srl_y -in .textarea -row 1 -column 2 -sticky ns
grid .srl_x -in .textarea -row 2 -column 1 -sticky ew
place .textarea -x 50 -y 200
	
	
	
	
	
	
	
	
	
	
	
	



