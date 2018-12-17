#!/bin/bash   
username=XXXX
passwd=XXX
cd /tmp

for host in `cat servers.txt`; 
do 
ssh $username@$host $passwd;

expert

echo "### $host ###" >> output.txt

lspci | egrep -i --color 'network|ethernet' >> output.txt

done
