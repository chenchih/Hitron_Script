
package require netsnmptcl

# set ip "172.16.80.97"

proc ccc {} {
	set ip [list 172.16.70.113]
	set count 0
	foreach AA $ip {
		puts "$count -----------------------------------------------------------------------------------------------"
		# ----------------adminstatus-----------------------
		puts "admin: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.2.1.69.1.3.3.0 ]"
		# --------------WiFi settings-----------------------
		# ----------------Bandmode----------------
		puts "Bandmode: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.10.0 ]"
		# ----------------2.4G----------------
		
		puts "Channel: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.1.3.0 ]"
		     
		puts "BandWidth: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.1.19.0 ]"
		     
		puts "BssEnable: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.32 ]"
		     
		puts "SSid: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.32 ]"
		     
		     
		puts "Security: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.32 ]"
		     
		     
		puts "PreshareKey: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.2.4.1.2.32 ]"
		     
		     
		puts "5G_PreshareKey: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.2.4.1.2.92 ]"
		     
		# ---"-------------5G----------------
		puts "5G_Channel: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.1.3.0 ]"
		     
		     
		puts "5G_Bandwidth: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.1.7.0 ]"
		     
		     
		puts "5G_BssEnable: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.92 ]"
		     
		     
		puts "5G_SSID: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.92 ]"
		     
		     
		puts "5G_Security: [snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.92 ]"
		
		puts "--------------------------------------------------------------------------------------------------------"
		# ---"---------------apply-------------------
		# puts "[snmp_get -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.12.0 ]
		incr count
	}
}

ccc