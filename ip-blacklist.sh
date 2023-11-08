#!/bin/bash

while read line;
do
	ufw insert 1 deny from $line to any;
done < /opt/ip-blacklist/ip-blacklist.txt
