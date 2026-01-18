#!/bin/bash

dpkg -i ./pmm-ca.deb

cd /usr/bin
./init-ca.sh
