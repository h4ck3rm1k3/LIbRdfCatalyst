
=head1 NAME

LibRdf::Model::Storage - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

package LibRdf::Model::Storage  ;

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

BEGIN { extends 'Catalyst::Model' }
# sub BUILDARGS {
#     my ($self, $config, $c, $realm) = @_;
#     warn "BUILDARGS config " . Dumper($config);
#     warn "BUILDARGS context" . Dumper($c);
#     warn "BUILDARGS realm" . Dumper($realm);
#     warn "BUILDARGS  sefl" . Dumper($self);
#     return $config;
# }
# sub COMPONENT
# {
#     my ($class,$name,$config) =@_;
#     warn "COMPONENT  config" . Dumper($config);
    
# }

# sub BUILD {
#     my ($self) = @_;
#     warn "BUILD" . Dumper($self);
# #    $self->ua; # Ensure lazy value is built.

#     return $self;
# }


##
# dir='DIR'
#     Work in DIR directory when creating files.

has storage_dir => (
        isa => Dir,
        is => 'ro',
        required => 1,
        coerce => 1,
	);

# new='yes'
#     Create a new storage erasing any existing one (boolean, default).

    has new_storage => (
        isa => Bool,
        is => 'ro',
        required => 1,
        coerce => 1,
	);
# write='yes'
#     Provide write access to store (boolean, default) otherwise is read only.

    has write_storage => (
        isa => Bool,
        is => 'ro',
        required => 1,
        coerce => 1,
	);
# mode='MODE'
#     File creation mode, default is (octal) 0644 Takes decimal (123), hex (0x123) or octal (0123).

    has storage_mode => (
        isa => Str,
        is => 'ro',
        required => 1,
        coerce => 1,
	);

# index-predicates='yes' (hashes storage only)
#     Enable indexing from predicates to (subject,object) which can in particular be useful for rdf:type relations. Boolean.

    has storage_index_predicates => (
        isa => Bool,
        is => 'ro',
        required => 1,
        coerce => 1,
	);

# contexts='yes'
#     Enable statement contexts. Each statement can be stored with an optional context Node and the context retrieved after queries. Boolean.

    has storage_contexts => (
        isa => Bool,
        is => 'ro',
        required => 1,
        coerce => 1,
	);

# hash-type='TYPE' (hashes storage only)
#     Use the TYPE hash-type for hashes storage. Current defined types are 'memory' and 'bdb' but is dependent on the hash factories available.

    has storage_hashtype => (
        isa => NonEmptySimpleStr,
        is => 'ro',
#        required => 1,
        coerce => 1,
	);

# merge='no' (mysql storage only)
#     Whether to maintain a table with merged models. Boolean.

    has storage_merge => (
        isa => Bool,
        is => 'ro',
        required => 1,
        coerce => 1,
	);

# bulk='no' (mysql storage only)
#     Whether model/storage method add_statements should be optimized, until a model/storage sync operation. Boolean.
    has storage_bulk => (
        isa => Bool,
        is => 'ro',
        required => 1,
        coerce => 1,
	);


# sub new { 
#     warn Dumper(@_);
# }

#};

1;
