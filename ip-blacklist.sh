#!/bin/bash

while read line;
do
	ufw insert 1 deny from $line to any comment "IPSum - known malicious IP";
done < /opt/ip-blacklist/ip-blacklist.txt
