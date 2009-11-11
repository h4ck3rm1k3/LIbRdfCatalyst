package LibRdf::Controller::CreateStorage;

use strict;
use warnings;
use parent 'Catalyst::Controller';
use RDF::Redland;
use RDF::Redland::Storage;

=head1 NAME

LibRdf::Controller::CreateStorage - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LibRdf::Controller::CreateStorage in CreateStorage.');

    #
    my $new  = $c->request->param( 'new' );
# new='yes'
#     Create a new storage erasing any existing one (boolean, default).

    my $write  = $c->request->param( 'write' );
# write='yes'
#     Provide write access to store (boolean, default) otherwise is read only.

    my $DIR  = $c->request->param( 'DIR' );
# dir='DIR'
#     Work in DIR directory when creating files.


# mode='MODE'
#     File creation mode, default is (octal) 0644 Takes decimal (123), hex (0x123) or octal (0123).
    my $MODE  = $c->request->param( 'MODE' );

# contexts='yes'
#     Enable statement contexts. Each statement can be stored with an optional context Node and the context retrieved after queries. Boolean.
    my $contexts  = $c->request->param( 'contexts' );

# hash-type='TYPE' (hashes storage only)
#     Use the TYPE hash-type for hashes storage. Current defined types are 'memory' and 'bdb' but is dependent on the hash factories available.
    my $hashtype  = $c->request->param( 'hashtype' );

# index-predicates='yes' (hashes storage only)
#     Enable indexing from predicates to (subject,object) which can in particular be useful for rdf:type relations. Boolean.

    my $indexpredicates  = $c->request->param( 'index-predicates' );

# bulk='no' (mysql storage only)
#     Whether model/storage method add_statements should be optimized, until a model/storage sync operation. Boolean.
    my $bulk  = $c->request->param( 'bulk' );

# merge='no' (mysql storage only)
#     Whether to maintain a table with merged models. Boolean.
    my $merge  = $c->request->param( 'merge' );

#    my    $storage=new RDF::Redland::Storage("hashes", "test",      "new='yes',hash-type='bdb',dir='.'");
#    my $storage=new RDF::Redland::Storage("hashes", "test", "new='yes',hash-type='memory'");

#    $c->model('Storage') = $storage;

}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
