package LibRdf::Controller::StashDump;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

LibRdf::Controller::StashDump - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
    my $p =   $c->stash->{predicate};
    if ($p)
    {
	$c->response->body('Matched LibRdf::Controller::StashDump  in CreatePredicate.' . $p->as_string() );
    }
    else
    {
	$c->response->body('Matched LibRdf::Controller::StashDump  in CreatePredicate. EMPTY');
    }
}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
