use strict;
use warnings;

sub ProcessFile
{
    my $filename=shift;
    open IN,$filename or die "canot open $filename";
    open OUT,">${filename}.new";
    print OUT '<span class=template_name>[% component.name %]</span>';
    while(<IN>)
    {
	if (/\[% template\.name %\]/)
	{
	    warn "Check $_  in $filename";
#	    if (s/\[% template\.name %\]/\[% component\.name %\]/)
#	    {
#		warn $_;
#	    }
	}
	print OUT "$_" unless /template.name/;
    }
    close OUT;
    close IN;
    rename $filename,"${filename}.old";
    rename "${filename}.new","$filename";
    warn "$filename --> ${filename}.old";
    warn "${filename}.new -> $filename";
}

open TEMPLATE,"templatesused.txt";
while (<TEMPLATE>)
{
    chomp;
    ProcessFile ("root/" . $_);;
}
close TEMPLATE;
