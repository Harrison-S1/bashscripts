#!/bin/sh

rm -f /etc/machine-id
rm /var/lib/dbus/machine-id
dbus-uuidgen --ensure=/etc/machine-id
dbus-uuidgen --ensure
######## not that if you put a @reboot in the cron you will need this last part, if not just remove it
##### cron would be @reboot /root/machineid-refresh.sh
rm /root/chg.sh
sed -i '$ d' /var/spool/cron/crontabs/root/
