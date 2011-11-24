#!/usr/bin/perl
use strict;
use List::Util qw(sum);

my @list = (1..100);

#SumSquare

sub sumSquare{
	my @numbers = @_;
	my $square;
	my $sum = 0;
	for (my $i = 0; $i<@numbers; $i++){
		$square = $numbers[$i] * $numbers[$i];
		$sum = $sum + $square;
	}
	return $sum;
}

sub squareSum{
	my @numbers = @_;
	my $sum;
	$sum = sum(@numbers);
	$sum = $sum * $sum;
	return $sum;
}

my $res1 = sumSquare(@list);
my $res2 = squareSum(@list);
my $diff = $res2 - $res1;

print "The Sum of Squares is : " . $res1 ."\n";
print "The Square of Sums is : " . $res2 ."\n";
print "The Difference Is     : " . $diff ."\n";