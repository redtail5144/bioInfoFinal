##################################
# Stores the two RNA strands
# Combines them then converts to DNA
# Author Austin Campbell 2019-11
#################################

# Strand 1
$RNA = UUAUCGCAUGCCGGCCAU;
# Yeets to screen
print "First RNA strand: $RNA\n";
# Second strand
$RNA2 = AAAAUGGAACGGAGCG;
# Mashes em together
$DNA = $RNA.$RNA2;
# Converts
$DNA =~ tr/UAGC/tagc/;

# Pancake flip
$DNA = reverse($DNA);
# Throws to screen
print "Dna strand: $DNA\n";

# Please stop using PERL, it is the worst language I have ever
# Had the mispleasure of using. Don't make anyone else suffer through this
