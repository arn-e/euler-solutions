#Set Array
#All values are assumed primes
print "Creating Array\n";

#set variables
my $i = 0;
my $j = 0;
my $n = 120000;
my $p = 2;
my @primeArray = ();
my @boolArray = ();

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

my $debug_counter = 1;

my @resultsArray = ();
print "Creating Prime Array\n";
for ($i=2; $i <= $n; $i ++){
	if ($primeArray[$i]){
		push @resultsArray, $i;	
		print "Prime # : $debug_counter is $i\n";
		$debug_counter++;
		my $testlen = @resultsArray;
		if ($testlen ==10001){
			print "The 1001st Prime Is : $resultsArray[10000] \n";
			last;
		}
	}
}
