package require netsnmptcl
proc ccc {} {
# set ip "172.16.80.97"
set ip [list 192.168.150.72]
foreach AA $ip {

	
	 
#	puts "$count -----------------------------------------------------------------------------------------------"
		# ----------------see cm gw mta mac-----------------------
				

	puts "CM mac: [snmp_get -t 5 -Oqv $AA public .1.3.6.1.2.1.2.2.1.6.2]"
		puts "--------------------------------------------------------------------------------------------------------"

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.8595.20.16.1.1.1.1.4.1 s 123456789} ] } {}
if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.8595.20.16.2.1.0 i 1} ] } {}





}
}

ccc