#!/usr/bin/perl
use strict;

#set variables
my $i = 0;
my $j = 0;
my $n = 2000000;
my $p = 2;
my @primeArray = ();
my @boolArray = ();

#Set Array
#All values are assumed primes
print "Creating Array\n";

while ($i < $n)
{
	$primeArray[$i] = 1;
	#print "Main Counter : $i \n";
	#print "Main Array : $primeArray[$i] \n";
	$i ++;	
}

print "Removing Non-Primes\n";
for ($i=2; $i*$i <= $n; $i++){
	if ($primeArray[$i] == 1){
		for (my $j=$i; $j*$i < $n; $j++){
			$primeArray[$j*$i]=0;
		}
	}
}

my $sum;

my @resultsArray = ();
print "Creating Prime Array\n";
for ($i=0; $i <= $n; $i ++){
	if ($primeArray[$i]){
		push @resultsArray, $i;	
		my $testlen = @resultsArray;
	}
}

my $len = @resultsArray;

$sum = 0;
for ($i=2; $i<$len; $i++){
	#print "$sum \+ $resultsArray[$i] = ";
	$sum = $sum + $resultsArray[$i];	
	#print "$sum\n";

}

print $sum;
