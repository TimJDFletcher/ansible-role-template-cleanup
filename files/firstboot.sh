#!/bin/bash

if [ -x /bin/systemd-machine-id-setup ] ; then 
    echo Initializing systemid $(hostname), generating /etc/machine-id
    /bin/systemd-machine-id-setup
else
    echo -n "fake-nosystemd-id" > /etc/machine-id
fi

/bin/run-parts /etc/firstboot.d/
