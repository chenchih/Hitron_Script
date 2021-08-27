
echo -n "Enter port No:"
read port
echo -n "Enter U or T [U for udp, t for TCP]:"
read protocol
if [[ "$protocol" == "t"||"T" ]]; then 
echo "TCP iperf -s $port"
iperf -s $port

elif [[ "$protocol" == "u"||"U" ]]; then 
echo "Udp iperf -s -u $port"
iperf -s -u $port

else
echo "Press Wrong, exit"
fi

}


function client ()  {
echo -n "Enter IP Address: "
read ipaddress
echo -n "Enter Time (second): "
read time
echo -n "Enter port No: "
read port
echo -n "Enter U or T [U for udp, t for TCP]: "
read protocol

if [[ "$protocol" == "t"||"T" ]]; then 
echo "Tcp iperf -c $ipaddress -w -P 5 -i 5-b 1M -t $time -p $port"
iperf -c $ipaddress -w -P 5 -i 5-b 1M -t $time -p $port

elif [[ "$protocol" == "u"||"U" ]]; then 
echo "Udp iperf -c $ipaddress -w -P 5 -i 5-b 1M -t $time -p $port"
iperf -c $ipaddress -u -P 5 -i 5-b 1M -t $time -p $port

else
echo "Press Wrong, exit"
fi

}


function ipv6_option ()  {
echo -n "Please enter Server/Client: " 
read devicetype

if [[ "$devicetype" == "Server"||"s" ]]; then 
echo -n "Please enter IP address:  "
read ipv6_address_server
ipv6_port_server
else
echo "exit"
fi



function ipv6_port_server ()  {
if [ "$serverPort" != "q" ]; then 
echo -n "Please enter port: "
read serverPort   
else
echo "exit"
break
fi

else


   
}


elif [[ "$devicetype" == "Client"||"c" ]]; then 




echo -n "Enter IPv6 Address: "
read ipaddress
echo -n "Enter Time (second): "
read time
echo -n "Enter port No: "
read port
echo -n "Enter U or T [U for udp, t for TCP]: "
read protocol

if [[ "$protocol" == "t"||"T" ]]; then 
echo "Tcp iperf -c $ipaddress -w -P 5 -i 5-b 1M -t $time -p $port"
iperf -c $ipaddress -w -P 5 -i 5-b 1M -t $time -p $port

elif [[ "$protocol" == "u"||"U" ]]; then 
echo "Udp iperf -c $ipaddress -w -P 5 -i 5-b 1M -t $time -p $port"
iperf -c $ipaddress -u -P 5 -i 5-b 1M -t $time -p $port

else
echo "Press Wrong, exit"
fi

}




echo "======================IPERF==================="
echo "1) IPV6"
echo "2) IPV4"
echo "q) Exit"
echo "============================="
echo -n "Choice:"
read choice

if [ "$choice" == "1" ]; then 
ipv6_option

elif [ "$choice" == "2" ]; then
ipv4_option

elif [ "$choice" == "Q" || "q" ]; then
break
			
echo "Exit:"
	
fi
