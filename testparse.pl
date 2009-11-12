use strict;
use warnings;

use RDF::Redland;
use Data::Dumper;


my $storage=new RDF::Redland::Storage
    (
     "hashes", 
     "test2", 
     {
	 "new"      => 0,
	 "hash-type"=>'bdb',
	 "write"    => 1,
	 "dir"      =>'.'
     }
    );


my $model=new RDF::Redland::Model($storage, "");

my $uri = shift;
#my $p = new RDF::Redland::URINode($uri);
my $p = new RDF::Redland::URI ($uri);

#my $parser = new RDF::Redland::Parser ()      or die "Failed to find parser";
my $parser = new RDF::Redland::Parser (undef, "application/rdf+xml")
      or die "Failed to find parser";

warn "URI:".$p->as_string();
warn "Parser:".Dumper($parser);
warn "Model:". Dumper($model);
$parser->parse_into_model ($p, $p, $model);
