#!/bin/sh

#APPLI CONFIG
APPLI=%APPLI%
VERSION=%VERSION%
RELEASE=%RELEASE%
CHANGELOG=%CHANGELOG%
REQUIRES=%REQUIRES%
EXCLUDE=%EXCLUDE% 
ARCHI=%ARCHI%
VERBOSE=%VERBOSE%

NODOC=1
NOCONFIG=1
. /usr/bin/rpmFactory
