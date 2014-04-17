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

#APPLI CONFIG
APPLI=myrpm
VERSION=2.1
RELEASE=6
CHANGELOG="RELEASE 2.1 - VERSION DE PRODUCTION"
REQUIRES="jakarta-tomcat,jrockit"
EXCLUDE='build.sh,post.sh,pre.sh,\.rpm$' 

. /usr/bin/rpmFactory
