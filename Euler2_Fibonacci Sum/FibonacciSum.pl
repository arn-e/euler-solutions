#!/usr/bin/perl
use strict;

#:Problem :
#By considering the terms in the Fibonacci sequence whose values do 
#not exceed four million, find the sum of the even-valued terms.

# set counter and variables
my $i = 0;
my $cap = 4000000;
my @FibonacciArray = (0,1);
my $total = 0;

# build Fibonacci sequence

while ($i < $cap)
{
	#add to array
	my $length = @FibonacciArray;
	my $element1 = @FibonacciArray[($length - 2)];
	my $element2 = @FibonacciArray[($length - 1)];
	my $newElement = $element1 + $element2;
	push(@FibonacciArray, $newElement);
	
	my $i2 = 0;
	my $newLength = @FibonacciArray;
	
	print "Length : " . $length . "\n";
	print "New Length : " . $newLength . "\n";
	
	while ($i2 < $newLength)
	{
		print $FibonacciArray[$i2];
		print ";";
		$i2++;	
	}
	print "\n";
	$i = $newElement;
}

my $len2 = @FibonacciArray;

for (my $i = 0; $i < $len2; $i++)
{
	if ($FibonacciArray[$i] % 2)
	{
		#
	}
	else 
	{
		print "$FibonacciArray[$i] is an even number, adding totals\n";
		$total = $total + $FibonacciArray[$i];
		print "Total : $total \n";
	}
}




