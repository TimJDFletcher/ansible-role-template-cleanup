#!/bin/sh
set -e
types="dsa ecdsa ed25519 rsa"
for type in $types ; do 
    rm /etc/ssh/ssh_host_${type}_key
    rm /etc/ssh/ssh_host_${type}_key.pub
done
