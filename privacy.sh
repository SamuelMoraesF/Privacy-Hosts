#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
else
    echo "Backing Up..." 1>&2

	if [ -f /etc/hosts.bkp ]; then
   		rm -r /etc/hosts.bkp
	fi
 
	cp /etc/hosts /etc/hosts.bkp

	echo 'Getting blocked services...'
	echo ''
	echo 'Getting (1/6)'
	echo ''
	curl "http://winhelp2002.mvps.org/hosts.txt" >> /etc/hosts
	echo ''
	echo 'Getting (2/6)'
	echo ''
	curl "http://someonewhocares.org/hosts/zero/hosts" >> /etc/hosts
	echo ''
	echo 'Getting (3/6)'
	echo ''
	curl "http://jansal.googlecode.com/svn/trunk/adblock/hosts" >> /etc/hosts
	echo ''
	echo 'Getting (4/6)'
	echo ''
	curl "http://adblock.gjtech.net/?format=hostfile" >> /etc/hosts
	echo ''
	echo 'Getting (5/6)'
	echo ''
	curl "http://www.hostsfile.org/Downloads/hosts.txt" >> /etc/hosts
	echo ''
	echo 'Getting (6/6)'
	echo ''
	curl "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" >> /etc/hosts
	echo ''
	echo 'All Files are downloaded'
	echo ''

    exit 1
fi
