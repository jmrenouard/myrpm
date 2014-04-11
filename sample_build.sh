#!/bin/sh

#APPLI CONFIG
APPLI=socle-ciweb2g
VERSION=2.1
RELEASE=6
CHANGELOG="Ajustement parametres JVM - VERSION DE PRODUCTION"
REQUIRES="ciweb2g-jakarta-tomcat,ciweb2g-jrockit"
EXCLUDE='build.sh,post.sh,pre.sh,\.rpm$' 

. /usr/bin/rpmFactory
