#!/bin/bash

echo Initializing system for Laterooms, generating /etc/machine-id
/bin/systemd-machine-id-setup

echo Resetting ssh server keys
rm /etc/ssh/ssh_host_*
