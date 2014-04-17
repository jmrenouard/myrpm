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
