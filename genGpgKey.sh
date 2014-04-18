#!/bin/sh
#------------------------------------------------------------------------------
#
# MyRPM - Rpm Utilities
# Copyright (c) Jean-Marie RENOUARD 2014 - LightPath
# Contact : Jean-Marie Renouard <jmrenouard at gmail.com>
#
# This program is open source, licensed under the Artistic Licence v2.0.
#
# Artistic Licence 2.0
# Everyone is permitted to copy and distribute verbatim copies of 
# this license document, but changing it is not allowed.
#
#------------------------------------------------------------------------------

umask 0277
cat << EOF > /tmp/gpg-genkey.conf
%echo Generating a package signing key
Key-Type: DSA
Key-Length: 1024
Subkey-Type: ELG-E
Subkey-Length: 2048
Name-Real: Jean-Marie RENOUARD
Name-Email: jmrenouard@gmail.com
Expire-Date: 0
Passphrase: xxxxxxx
%commit
%echo Done
EOF
umask 0022

(find / -xdev -type f -exec sha256sum {} >/dev/null \; 2>&1) &
export ENTROPY=$!
gpg --batch --gen-key /tmp/gpg-genkey.conf > gpg-keygen.log 2> gpg-keygen_error.log
ps -ef | grep find | awk '{ print $2 }' | grep ${ENTROPY} && kill ${ENTROPY}
kill `ps -ef|grep sha256sum|awk '{if($3==1){print $2}}'`
rm /tmp/gpg-genkey.conf
