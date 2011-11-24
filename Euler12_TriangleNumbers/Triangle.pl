#!/usr/bin/perl
use strict;

my $sum =0;
my @triangles;

#build array of triangle #s
for (my $i=1;$i<1000;$i++){
	$sum = $sum+$i;
	#print "Debug : Triangle $i : $sum \n";
	push (@triangles,$sum);	
}

my $last_val;
my $highest_factors=0;

#factor triangle 
my $len = @triangles;
#print $len . "\n";
OUTER : for (my $i=1;$i<$len;$i++){
	#print "Debug : $i\n";
	my $val = $triangles[$i];
	my $factors = 0;  
	for (my $j=($val-1);$j>1;$j--){
		if ($val % $j == 0){
			$factors++;
		}
	}
	if ($factors>$highest_factors){
		$highest_factors = $factors;
		$last_val = $val;
		#print "Debug : New High Value : $val\n";
		#print "Debug : New Factor Cnt : $highest_factors\n";
	}
	if ($highest_factors >= 498){
		last OUTER;
	}
		
}

print "Value : $last_val\n";
print "Factor : $highest_factors\n";