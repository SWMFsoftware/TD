#!/usr/bin/perl
#  Copyright (C) 2002 Regents of the University of Michigan, 
#  portions used with permission 
#  For more information, see http://csem.engin.umich.edu/tools/swmf

# Allow in-place editing                                                        
$^I = "";

# Add local directory to search                                                 
push @INC, ".";

use strict;

our $Component = "TD";
our $Code = "TD22";
our @Arguments= @ARGV;


my $config     = "share/Scripts/Config.pl";

require "../../$config";


exit 0;
