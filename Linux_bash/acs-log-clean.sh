#chenchih 04/01/2021
#!/bin/bash
#3touch hhhhh.txt
#read -p "Please enter your log bane:" filename
echo "storage space"
df -h
locationlog="/opt/jboss/server/default/log"
cd $locationlog
ls
echo -n "Please enter your log name you want to delete:(ex:2021-03-01): " 
read filename
rm -f server.log.$filename*
echo "===================deleted================"
ls





