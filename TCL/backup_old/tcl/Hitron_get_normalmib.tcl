
package require netsnmptcl

# set ip "172.16.80.97"
set ip [list 192.168.152.100]
proc ccc {} {
	
	set count 0
	 
#	puts "$count -----------------------------------------------------------------------------------------------"
		# ----------------see cm gw mta mac-----------------------
				file mkdir upgrade_log
		#puts "#$count"
		
		puts "--------------------------------------------------------------------------------------------------------"
		puts "freq: [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.10.127.1.1.1.1.2.3]"
		puts "--------------------------------------------------------------------------------------------------------"
		#puts "CM mac: [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.2.2.1.6.2]"
		
		#used multiple line
	#	set CMmac [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.2.2.1.6.2]
		#set CMmac [lindex [split $CMmac "\""] 1]
		
		#puts [regsub -all {\"} $CMmac {}]
		#use one line
		set CMmac [lindex [split [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.2.2.1.6.2] "\""] 1 ]
#		puts $CMmac
		regexp {([\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+)} $CMmac match ::txt11 
	#	puts $::txt11
		puts "Cm  mac: [regsub -all {\s} $::txt11 {:}]"
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		#puts $CMmac
		puts "--------------------------------------------------------------------------------------------------------"
		puts "GW mac: [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.2.2.1.6.1]"

 
		puts "--------------------------------------------------------------------------------------------------------"
		puts "MTA mac: [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.2.2.1.6.16]"
		puts "--------------------------------------------------------------------------------------------------------"
	##	puts "wifi version: [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.4.1.35604.1.19.3.3.201.0]"
	##	puts "--------------------------------------------------------------------------------------------------------"
		puts "BPI: [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.126.1.1.1.1.3.2]"
	set count12 [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.126.1.1.1.1.3.2] 
	#	check bpi is enable or disable 
	if {$count12 == 1} {
		puts "bpi disable"
	} else {
			puts "bpi enable"
		}

		puts "--------------------------------------------------------------------------------------------------------"
	puts "configure: [snmp_get -t 5 -Oqv $::ip private  .1.3.6.1.2.1.69.1.4.5.0]"
	puts "--------------------------------------------------------------------------------------------------------"
	

		# ---"---------------apply-------------------
		# puts "[snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.12.0 ]
		#incr count

#set wan side webgui password		
#puts "Set WEBGUI wan side password: "
#if { [ catch {snmp_set -t 5 -Oqv $::ip private .1.3.6.1.4.1.8595.20.16.1.1.1.1.4.1 s 1234567890} ] } {}
#active or commit it
#if { [ catch {snmp_set -t 5 -Oqv $::ip private .1.3.6.1.4.1.8595.20.16.2.1.0 i 1} ] } {}
#puts "--------------------------------------------------------------------------------------------------------"		
		
}

ccc