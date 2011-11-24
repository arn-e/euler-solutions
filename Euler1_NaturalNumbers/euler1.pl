#!/usr/bin/perl
use strict;

#Declare numbers and create empty array
my $num1 = 3;
my $num2 = 5;
my $numTotal = 0;
my $i = 0;

while ($i < 1000)
{
	my $isTrueFlag = 0;
	if ($i % $num1)
	{
		print "$i is not divisible by $num1\n";
	}
	else
	{
		print "$i is divisible by $num1\n";
		$isTrueFlag = 1;
	} 
	if ($i % $num2)
	{
		print "$i is not divisible by $num2\n";

	}
	else
	{
		print "$i is divisible by $num2\n";
		$isTrueFlag = 1;
	} 
	if ($isTrueFlag == 1)
	{
		$numTotal = $numTotal + $i;
		print "Total : $numTotal\n";
	}
	$i++;
}
print $numTotal;

