#!/usr/bin/perl
use strict;

my $a;
my $b = 2;
my $c = 3;
my $goal = 1000;

OUTER : for ($a = 1; $a < $goal; $a++){
	INNER : for ($b = 2; $b < $goal; $b++){
		my $a2 = ($a*$a);
		my $b2 = ($b*$b);
		my $c2 = $a2 + $b2;
		$c = sqrt($c2);
		print "Equation : $a2 \+ $b2 \= $c2\n";
		if ($a+$b+$c==$goal){
			print "Found Operators : $a + $b + $c = $goal\n";
			print "Proof : $a2 + $b2 = $c2\n";
			last OUTER;
		}
	}
}

my $product = $a * $b * $c;
print $product;