#!/bin/bash

apt install easy-rsa

dpkg -i ./pmm-ca.deb

cd /usr/bin
./init-ca.sh

openssl x509 -in /etc/easy-rsa/pki/ca.crt -noout -text
