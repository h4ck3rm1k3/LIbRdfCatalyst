package LibRdf::Controller::ModelAddStatement;

use strict;
use warnings;
use parent 'Catalyst::Controller';
use RDF::Redland;
use Data::Dumper;
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

    my $report  = 'Matched LibRdf::Controller::ModelAddStatement in ModelAddStatement.';
    
    $report .= ' subject. done' . $c->request->param( 'S' );
    
    my $s  = new RDF::Redland::URI($c->request->param( 'S' ));
    my $p  = new RDF::Redland::URI($c->request->param( 'P' ));
    my $o  = new RDF::Redland::URI($c->request->param( 'O' ));

    $report .= ' Subject   :' . $s->as_string . '<p/>\n';
    $report .= ' Predicate :' . $p->as_string . '<p/>\n';
    $report .= ' Object    :' . $o->as_string . '<p/>\n';

    my $a = new RDF::Redland::Statement ($s,$p,$o);

    $report .= ' statement    :' . $a->as_string . '<p/>\n';

    $report .= ' ModelSize : ' . $c->model("ModelAdaptor")->size() . '<p/>\n';

    my $ret = $c->model("ModelAdaptor")->add_statement($a);
   
    $report .= Dumper($ret);

    my $ret =     $c->model("ModelAdaptor")->sync();

    $report .= Dumper($ret);

    $report .= ' ModelSize : ' .  $c->model("ModelAdaptor")->size() . '<p/>\n';


    $report .= ' ModelReport : ' .  $c->model("ModelAdaptor")->to_string() . '<p/>\n';

    $c->response->body($report);





}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
