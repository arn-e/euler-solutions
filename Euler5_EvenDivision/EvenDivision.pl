#!/usr/bin/perl
use strict;

my @numbers = (1..20);

OUTER : for (my $i = 40; $i<2111112935; $i=$i+20){
	INNER : for (my $j = 0; $j<@numbers; $j++){
		if (($i % $numbers[$j])!=0){
			last;
		}
		else {
			if (($j==19) and ($i % $numbers[$j])==0){
				print "Lowest Divisible Number : $i \n";
				last OUTER;
			}
		}
	}
}