#!/bin/bash

	echo 'Getting files...'
	echo ''
	echo 'Getting (1/6)'
	echo ''
	curl "http://winhelp2002.mvps.org/hosts.txt" >> winhelp2002
	echo ''
	echo 'Getting (2/6)'
	echo ''
	curl "http://someonewhocares.org/hosts/zero/hosts" >> someonewhocares
	echo ''
	echo 'Getting (3/6)'
	echo ''
	curl "http://jansal.googlecode.com/svn/trunk/adblock/hosts" >> jansal
	echo ''
	echo 'Getting (4/6)'
	echo ''
	curl "http://adblock.gjtech.net/?format=hostfile" >> adblock
	echo ''
	echo 'Getting (5/6)'
	echo ''
	curl "http://www.hostsfile.org/Downloads/hosts.txt" >> hostsfile
	echo ''
	echo 'Getting (6/6)'
	echo ''
	curl "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" >> pgl-yoyo
	echo ''
	echo 'All Files are downloaded'
	echo ''

    exit 1
fi
