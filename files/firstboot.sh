#!/bin/bash

echo Initializing systemid $(hostname), generating /etc/machine-id
/bin/systemd-machine-id-setup

/bin/run-parts /etc/firstboot.d/
