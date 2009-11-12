package LibRdf::Controller::CreatePredicate;

use strict;
use warnings;
use parent 'Catalyst::Controller';
use RDF::Redland;
use RDF::Redland::XMLLiteralNode;

=head1 NAME

LibRdf::Controller::CreatePredicate - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut
#sub wiki : PathPart('wiki') Chained('/') CaptureArgs(1) {

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( 'hello!');
}

sub createpredicate : PathPart('createpredicate') Chained('/') CaptureArgs(0) {
    my ( $self, $c ) = @_;
    my $p = $c->stash->{predicate} ;

    if ($p)
    {
	$c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate.' . $p->as_string() );
    }
    else
    {
	$c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate. NOTHING');
    }
    
}


# http://localhost:3000/createpredicate/URI?URI=http://librdf.org/docs/pod/RDF/Redland/LiteralNode.html
sub URI : PathPart('URI') Chained('createpredicate') Args(0) {
	my ( $self, $c, $uri ) = @_;
	$uri =  $uri || $c->request->param( 'URI' );
	my $p = undef;
	
	if ($uri)
	{
	    $p = new RDF::Redland::URINode($uri);
	}
	if ($p)
	{
	    $c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate.' . $p->as_string() );
	}
	else
	{
	    $c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate. no p');
	}
	
	$c->stash->{predicate} = $p;

}

sub Literal : PathPart('Literal') Chained('createpredicate') Args(1) 
{
    my ( $self, $c, $l ) = @_;
#http://localhost:3000/createpredicate/Literal/LIT%20fdsgh%20test1%20!%20
#i get this : Matched LibRdf::Controller::CreatePredicate in CreatePredicate Literal. "LIT fdsgh test1 ! "
 

    $l =  $l || $c->request->param( 'LIT' );
    
    my $p = undef;
    if ($l)
    {
	$p = new RDF::Redland::LiteralNode($l);
    }
    if ($p)
    {
	$c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate Literal. "' . $p->as_string() . '"' );
    }
    else
    {
	$c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate. no p');
    }
    
    $c->stash->{predicate} = $p;
    

}

#http://localhost:3000/createpredicate/XML/?XML=%3Ctag2%3ELIT%3C/tag%3E
#Matched LibRdf::Controller::CreatePredicate in CreatePredicate.LIT^^
sub XML : PathPart('XML') Chained('createpredicate') {
	my ( $self, $c, $x ) = @_;

	$x =  $x || $c->request->param( 'XML' );
	my $p = undef;
	if ($x)
	    {
		warn "GOT $x";
		$p = new RDF::Redland::XMLLiteralNode($x);
	    }
	if ($p)
	{
	    $c->response->body('Matched LibRdf::Controller::CreatePredicate in XMLLiteralNode: "' . $p->as_string() . '"' );
	}
	else
	{
	    $c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate. no data. ');
	}
	
	$c->stash->{predicate} = $p;


}

#http://localhost:3000/createpredicate/Blank/Funky

sub Blank : PathPart('Blank') Chained('createpredicate') Args(1) {
	my ( $self, $c, $b ) = @_;
	
	$b = $b ||  $c->request->param( 'Blank' );
	
	my $p = undef;
	if ($b)
	{
	    $p = new RDF::Redland::BlankNode($b);
	}	
	if ($p)
	{
	    $c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate. BlankNode: "' . $p->as_string() . '"' );
	}
	else
	{
	    $c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate. no p');
	}
	
	$c->stash->{predicate} = $p;

}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found 2' );
    $c->response->status(404);
}

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
