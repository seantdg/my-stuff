#!/bin/sh
# make sure it has 755 and is symlinked /etc/init.d/startup to /etc/rc2.d/S99startup
#no - check its added to /etc/rc.local
 
if [ ! -f /var/tmp/sdInstall1 ]
then
	/var/tmp/setup1.sh && touch /var/tmp/sdInstall1 && reboot
elif [ ! -f /var/tmp/sdInstall2 ]
then
	/var/tmp/setup2.sh && touch /var/tmp/sdInstall2 && reboot
elif [ ! -f /var/tmp/sdInstall3 ]
then
	/var/tmp/setup3.sh && touch /var/tmp/sdInstall3 && reboot
elif [ ! -f /var/tmp/sdInstall4 ]
then
	/var/tmp/setup4.sh && touch /var/tmp/sdInstall4 && reboot
fi
