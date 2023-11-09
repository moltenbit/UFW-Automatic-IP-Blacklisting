# UFW-Automatic-IP-Blacklisting

Downloads known malicious IP adresses daily from [IPsum](https://github.com/stamparm/ipsum) and blocks them with UFW.

```
# create dir for blacklist files
:~$ mkdir /opt/ip-blacklist

# download the blacklist scripts to the dir
:~$ wget https://raw.githubusercontent.com/sysadt/UFW-Automatic-IP-Blacklisting/main/ip-blacklist.sh -P /opt/ip-blacklist
:~$ wget https://raw.githubusercontent.com/sysadt/UFW-Automatic-IP-Blacklisting/main/update-blacklist.sh -P /opt/ip-blacklist

# change permissions
:~$ chmod 700 /opt/ip-blacklist/ip-blacklist.sh
:~$ chmod 700 /opt/ip-blacklist/update-blacklist.sh

# add both scripts to crontab for daily runs
:~$ sudo crontab -e

0 6 * * * /opt/ip-blacklist/update-blacklist.sh
10 6 * * * /opt/ip-blacklist/ip-blacklist.sh
```
