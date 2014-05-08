#!/usr/bin/perl 
#===============================================================================
#
#         FILE: getParam.pl
#
#        USAGE: ./getParam.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/05/2014 10:32:40
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

my $macrosFile=$ENV{'HOME'}."/.rpmmacros";
# Retrieve value from files (like .rpmmacros)
sub getParameterFromConfig {
    my $parameter = shift;

    my $res    = shift;
    my $opened = 1;
    my $fh;
    open( $fh, q(<), "$macrosFile" ) || ( $opened = 0 );
    if ($opened) {
        while (<$fh>) {
            if (m/^\%$parameter\s+(.*)$/) {
                $res = $1;
            }
        }

        close($fh);
    }
    return $res;
}


print getParameterFromConfig( "_topdir" );
print getParameterFromConfig( "packager" );
print getParameterFromConfig( "vendor" );
print getParameterFromConfig( "vendor_url" );
print getParameterFromConfig( "_arch", "noarch" );
print getParameterFromConfig( "_dist" );
