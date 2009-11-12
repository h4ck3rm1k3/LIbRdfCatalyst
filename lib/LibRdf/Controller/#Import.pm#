package LibRdf::Controller::Import;

use strict;
use warnings;
use parent 'Catalyst::Controller';
use RDF::Redland;
use RDF::Redland::Parser;
use Data::Dumper;

=head1 NAME

LibRdf::Controller::Import - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( 'hello!');
}


sub Import :PathPart('Import')  Chained('/') CaptureArgs(0)  {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LibRdf::Controller::Import in Import.');
}


#Import N3 URI.[http://introspector.sourceforge.net/2003/08/20/treecc.n3]
#http://localhost:3000/Import/N3?URI=file://sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/treecc.rdf

sub URI : PathPart('N3') Chained('Import') Args(0) {
	my ( $self, $c, $uri ) = @_;
	$uri =  $uri || $c->request->param( 'URI' );
	my $p = undef;
	
	if ($uri)
	{
	    $p = new RDF::Redland::URI ($uri);
	}
	if ($p)
	{
	    $c->response->body('Import N3 URI.' . $p->as_string() );

#	    my $parser=new RDF::Redland::Parser("n3"); 
	    #undef, "application/rdf+xml"
	    my $parser = new RDF::Redland::Parser ()      or die "Failed to find parser";

	    my $model=$c->model("ModelAdaptor");
	    warn "URI:".$p->as_string();
	    warn "Parser:".Dumper($parser);
	    warn "Model:". Dumper($model);
	    $parser->parse_into_model ($p, $p, $model);
	    
	}
	else
	{
	    $c->response->body('No URI');
	}
	
	$c->stash->{import_uri} = $p;

	

} 



=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
