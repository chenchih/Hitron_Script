package require netsnmptcl
 set ip "172.16.30.33"
#puts "CM mac: [snmp_get -t 5 -Oqv $ip private  .1.3.6.1.2.1.2.2.1.6.2]"
#puts "type: [snmp_get -t 5 -Oqv $ip private  .1.3.6.1.4.1.35604.2.4.1.1.2.6.1.1.2.2]"


if {[catch {set temp [snmp_get -t 5 -Oqv $ip private  .1.3.6.1.4.1.35604.2.4.1.1.2.6.1.1.2.2]} re]} {
	
			if {
				regexp {([\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+)} $temp match ::txt6 
				puts[string tolower [ regsub -all {\s} $::txt6 {:}]] 
			}
		} else {
			regexp {([\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+\s[\w]+)} $temp match ::txt6 
			puts  [string toupper [ regsub -all {\s} $::txt6  {:}]] 
		
		
		}
		