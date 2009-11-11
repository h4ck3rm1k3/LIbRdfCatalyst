package LibRdf::Controller::ModelAddStatement;

use strict;
use warnings;
use parent 'Catalyst::Controller';
use RDF::Redland;

=head1 NAME

LibRdf::Controller::ModelAddStatement - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LibRdf::Controller::ModelAddStatement in ModelAddStatement.');

    $c->response->body(' subject. done' . $c->request->param( 'S' ));

    my $s  = new RDF::Redland::URI($c->request->param( 'S' ));
    my $p  = new RDF::Redland::URI($c->request->param( 'P' ));
    my $o  = new RDF::Redland::URI($c->request->param( 'O' ));

    $c->model("ModelAdaptor")->add($s,$p,$o);

    $c->response->body(' ModelSize : ' . $c->model("ModelAdaptor")->size() );
    $c->response->body(' ModelAddStatement. done');



}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
