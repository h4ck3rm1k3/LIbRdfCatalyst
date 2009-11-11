#extend the RDF 
package RDF::Redland::Model::Catalyst;
use RDF::Redland::Storage;
use RDF::Redland::Model;
use Moose;
extends 'RDF::Redland::Model';

sub create
{
    #!!!
    my $storage=new RDF::Redland::Storage("hashes", "test", "new='yes',hash-type='memory'");
    my $model=new RDF::Redland::Model($storage, "");
    
#    warn "BUILD  self:" . Dumper($self);
#    warn "BUILD  config:" . Dumper($config);

    return $model;
}
1;
