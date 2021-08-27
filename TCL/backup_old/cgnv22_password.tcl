set cmMac 9050CA886AC0
set x [scan $cmMac "%2s%2s%2s%2s%2s%2s" m1 m2 m3 m4 m5 m6]
set MsoPassword [string toupper "#$m2$m1$m4@$m3$m6$m5*"]
puts "Pwd orginal: $cmMac"
puts "Pwd generator: $MsoPassword"
