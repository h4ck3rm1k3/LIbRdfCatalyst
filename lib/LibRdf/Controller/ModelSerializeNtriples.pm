package LibRdf::Controller::ModelSerializeNtriples;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

LibRdf::Controller::ModelSerializeNtriples - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

#    my $base_uri= 'localhost';
    my $model =  $c->model("ModelAdaptor");

    my $base_uri  = new RDF::Redland::URI('http://localhost:3000/ntriples/');

    $c->response->body('Matched LibRdf::Controller::ModelSerializeNtriples in ModelSerializeNtriples.');
    my $serializer=new RDF::Redland::Serializer("ntriples");   
    my $string = $serializer->serialize_model_to_string( $base_uri, $model);

    $c->response->body($string);


}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
