#!/bin/bash
# Make sure somatic is started using /usr/local/etc/init.d/somatic start
if [ "$(pidof slogd)" ]
then
	echo "Somatic already running."
else
	echo "Somatic not running. Starting Somatic."
	/usr/local/etc/init.d/somatic start
fi

if [[ -d /var/run/somatic/ ]]; then 
   echo "Somatic directory already exists, continuing."
else
    mkdir -m 777 /var/run/somatic/
    echo "Created somatic working directory in /var/run/somatic"
fi

ach -U llwa_ft && echo "Ach channel removed." || echo "Ach channel not present. Continuing."
ach -o 666 -1 -C llwa_ft -m 10 -n 4096 && echo "Ach channel created." || echo "Ach channel creation failed."

# netcan
# -d = daemonize (?)
# -I = somatic channel (?)
# -b = bus number (numeric argument)
# -B = bitrate (1Mbit = 1000)
# -c = channel
./netcanftd -v -d -I lft -b 0 -B 1000 -c llwa_ft && echo "netcanfd successfully started." || echo "failed to start netcanfd"
