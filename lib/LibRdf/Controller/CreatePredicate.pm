package LibRdf::Controller::CreatePredicate;

use strict;
use warnings;
use parent 'Catalyst::Controller';

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



    my $uri =  $c->request->param( 'URI' );

    my $p = undef;
    if ($uri)
    {
	$p = new RDF::Redland::URINode($uri);
    }
    else
    {
	my $l =  $c->request->param( 'LIT' );
	if ($l)
	{
	    $p = new RDF::Redland::LiteralNode($l);
	}
	else
	{
	    my $x =  $c->request->param( 'XML' );
	    if ($x)
	    {
		$p = new RDF::Redland::XMLLiteral($x);
	    }
	    else
	    {
		my $b =  $c->request->param( 'Blank' );
		if ($b)
		{
		    $p = new RDF::Redland::BlankNode($b);
		}	
	    }
	    
	}
    }

    $c->stash->{predicate} = $p;

    warn "create predicate";
    if ($p)
    {
	$c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate.' . $p->as_string() );
    }
    else
    {
	$c->response->body('Matched LibRdf::Controller::CreatePredicate in CreatePredicate. no p');
    }
    
}

sub URI : PathPart('URI') Chained('createpredicate') Args(1) {
	my ( $self, $c, $page_name ) = @_;
	#  load the page named $page_name and put the object
	#  into the stash
	warn $page_name;
}


#   this is the beginning of our chain
sub hello : PathPart('hello') Chained('createpredicate') CaptureArgs(1) {
    my ( $self, $c, $integer ) = @_;
    $c->stash->{ message } = "Hello ";
    $c->stash->{ arg_sum } = $integer;
}

#   this is our endpoint, because it has no :CaptureArgs
sub world : PathPart('world') Chained('hello') Args(1) {
      my ( $self, $c, $integer ) = @_;
      $c->stash->{ message } .= "World!";
      $c->stash->{ arg_sum } += $integer;
      
      $c->response->body( join "<br/>\n" =>
			  $c->stash->{ message }, $c->stash->{ arg_sum } );
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
