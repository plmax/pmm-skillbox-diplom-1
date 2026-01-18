#!/bin/bash
set -e

# Остновной каталог CA
export EASYRSA=/etc/easy-rsa
mkdir -p "$EASYRSA"
cp -r /usr/share/easy-rsa/* "$EASYRSA"
cd "$EASYRSA"

export EASYRSA_VARS_FILE=/etc/easy-rsa/vars

# Инициализация PKI
./easyrsa init-pki

# Создание CA без пароля
./easyrsa --batch build-ca nopass
echo "CA создано в $EASYRSA/pki"
