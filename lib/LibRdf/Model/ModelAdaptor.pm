package LibRdf::Model::ModelAdaptor;
 use strict;
 use warnings;
 use base 'Catalyst::Model::Adaptor';

 __PACKAGE__->config( 
     class       => 'RDF::Redland::Model::Catalyst',
     constructor => 'create',
 );

1;
