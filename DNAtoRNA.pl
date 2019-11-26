################################
# Program to take in two files
# Combines then reverses them
# Author: Austin Campbell 2019-11
################################

# Reads in the dna from the file
# $_[0] file Name
# $_[1] dna array
# $_[2] number array
sub readFrom {
  # Displays what file is being read from
  print "Reading from $_[0]\n";
  # Opens the file read only
  open(FILE, '<', $_[0]) or die $!;

  # While reading from file
  # Save dna to one array
  # and numbers to another
  while(<FILE>) {
    #********GETS THE DNA LETTERS********
    # Temp saves the dna base pairs
    # in reverse order
    my $temp = reverse($_);
    # Removes \n from line
    $temp =~ s/\R//g;
    # Converts to RNA
    $temp =~ tr/tagc/UAGC/;
    # Stores them into the dna array
    @{$_[1]}[$index] = $temp;
    # Removes numbers
    @{$_[1]}[$index] =~ s/\d//g;

    #********GETS THE LINE NUMBERS********
    # temp saves the line
    $temp = $_;
    # Removes the characters
    $temp =~ s/\D//g;
    # Saves them to the num array
    @{$_[2]}[$index] = $temp;

    # Increases index
    $index++;
  }

  # closes the file
  close(FILE);
}

# Two files with DNA
$fileName1 = 'data1.dat';
$fileName2 = 'data2.dat';

# Arrays for holding data
@dna = (); # Holds DNA
@num = (); # Holds line numbers

# Index for storing shit into array
$index = 0 ;

# Reads from both files
readFrom($fileName1, \@dna, \@num);
readFrom($fileName2, \@dna, \@num);

# Reverses the array
@dna = reverse(@dna);

# Loops through each array and
# combines the numbers with the
# reveresed dna shit
for(my $i = 0; $i < $index; $i++) {
  @rna[$i] = @num[$i]." ".@dna[$i];
}

# Throws it to the screen
print "Combined the dna from $fileName1 and $fileName2\n";
print "Converted them into RNA and reversed them:\n";
for($i = 0; $i < $index; $i++){
  print"@rna[$i]\n";
}
# Please stop using PERL, it is the worst language I have ever
# Had the mispleasure of using. Don't make anyone else suffer through this
