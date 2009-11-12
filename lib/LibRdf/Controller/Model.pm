package LibRdf::Controller::Model;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

LibRdf::Controller::Model - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LibRdf::Controller::Model in Model.');
}

sub Model :PathPart('Model')  Chained('/') CaptureArgs(0)  {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LibRdf::Controller::Import in Import.');
}


sub targets : PathPart('Targets') Chained('Model') Args(0) {
#http://librdf.org/docs/pod/RDF/Redland/Model.html
#http://svn.librdf.org/view/perl/trunk/perl/lib/RDF/Redland/Model.pm?view=markup
#
#SOURCE ARC
	my ( $self, $c ) = @_;
	my $src =  $c->request->param( 'SOURCE' );
	my $arc =  $c->request->param( 'ARC' );
	my $p = undef;
	my $string = "";
	if ($src && $arc)
	{
#	    $p = 	    my $re = new RDF::Redland::URI ($uri);
	    my $srcu =  new RDF::Redland::URI ($src);
	    my $arcu =  new RDF::Redland::URI ($arc);

	    my $model=$c->model("ModelAdaptor");

# targets SOURCE ARC
#    Get all target RDF::Redland::Node objects for a given source SOURCE, arc ARC RDF::Redland :Node objects as a list of RDF::Redland::Node objects.
	    my(@sources)=  $model->targets ($srcu, $arcu);

## make into a new sub... view rdf serialize
#	    unless ($c->response->content_type) {
#		$c->response->content_type('application/xml');
#	    }	    
	    foreach my $s (@sources)
	    {
		$string .= $s ->as_string(). "\n";
	    }
#	    my $serializer=new RDF::Redland::Serializer("rdfxml");   
#	    my $string = $serializer->serialize_model_to_string( $base_uri, $model);
	    
	    $c->response->body($string);

	}
	else
	{
	    $c->response->body('No URI');
	}
} 



=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
