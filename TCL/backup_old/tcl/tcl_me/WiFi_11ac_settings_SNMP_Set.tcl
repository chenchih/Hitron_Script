
package require netsnmptcl

# set ip "172.16.80.97"

proc ccc {} {
set ip [list 172.16.70.113]
foreach AA $ip {
# ----------------adminstatus-----------------------
if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.2.1.69.1.3.3.0 i 2 } ] } {
}
# ----------------WiFi settings-----------------------
# if { [ catch {snmp_set -t 15 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.13.0 i 1 } ] } {
# }

# ------------------Bandmode----------------
if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.10.0 i 3 } ] } {
}
# ------------------2.4G----------------

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.1.3.0 u 11 } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.1.19.0 i 2 } ] } {
}

 if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.32 i 1 } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.32 s Puma_2.4G_CBN_2.4G } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.32 i 7 } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.1.5.4.2.4.1.2.32 s 12345678 } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.2.4.1.2.92 s 12345678 } ] } {
}

# ------------------5G----------------
if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.1.3.0 u 36 } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.1.7.0 i 3 } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.92 i 1 } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.92 s Puma_5G_CBN } ] } {
}

if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.92 i 0 } ] } {
}

# --------------------apply-------------------
if { [ catch {snmp_set -t 5 -Oqv $AA private .1.3.6.1.4.1.35604.1.19.51.12.0 i 1 } ] } {
}
}

}

ccc