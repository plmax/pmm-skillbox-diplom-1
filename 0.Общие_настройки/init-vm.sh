#!/bin/bash

apt update && apt upgrade -y

apt install ufw fail2ban -y

dpkg -i ./ufw-base.deb
dpkg -i ./fail2ban-base.deb
