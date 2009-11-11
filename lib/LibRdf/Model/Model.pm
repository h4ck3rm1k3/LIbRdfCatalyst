package LibRdf::Model::Model;

use strict;
use warnings;
#use parent 'Catalyst::Model';

use strict;
use warnings;
use Data::Dumper;
use Moose;
#use MooseX::Declare;
use MooseX::Types::Common::String qw/NonEmptySimpleStr/;
use MooseX::Types::Moose qw/ Num Str Maybe Bool/;
use MooseX::Types::Path::Class qw/Dir/;
use MooseX::Types::Moose qw/ArrayRef/;   

use MooseX::AttributeHelpers;
use namespace::clean -except => qw(meta);
use RDF::Redland;
use RDF::Redland::Model;
use LibRdf::Model::Storage ;

BEGIN { extends 'Catalyst::Model' }

# has model_storage => (
#         isa => Storage,
#         is => 'ro',
#         required => 1,
#         coerce => 1,
# 	);


sub BUILD {
    my ($self,$config) = @_;
    my $storage=new RDF::Redland::Storage("hashes", "test", "new='yes',hash-type='memory'");
    my $model=new RDF::Redland::Model($storage, "");

    warn "BUILD  self:" . Dumper($self);
    warn "BUILD  config:" . Dumper($config);

    return $model;
}


=head1 NAME

LibRdf::Model::Model - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
