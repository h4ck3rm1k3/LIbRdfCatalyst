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
    $c->log->debug('*** INSIDE index METHOD ***');
    $c->response->body('Matched LibRdf::Controller::Model in Model.');
}

sub Model :PathPart('Model')  Chained('/') CaptureArgs(0)  {
    my ( $self, $c ) = @_;
    $c->log->debug('*** INSIDE MODEl METHOD ***');
    
#    $c->response->body('in Model. You should not see this!.');
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

	    $string .= " SRC:" . $srcu->as_string();
	    $string .= " ARC:" . $arcu->as_string();
	    my $statement2=new RDF::Redland::Statement($srcu,$arcu,undef);
	    
	    warn "TEST";
	    my(@sources)=  $model->find_statements ($statement2);

	    warn "TEST2";
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

#       $c->stash->{template} = 'arcs.html';
	$c->stash->{message}  = 'targets are :'. $string;
	
} 


sub Sources : PathPart('Sources') Chained('Model') Args(0) {
	my ( $self, $c ) = @_;
	my $tgt =  $c->request->param( 'TARGET' );
	my $arc =  $c->request->param( 'ARC' );
	my $p = undef;
	my $string = "";
	if ($tgt && $arc)
	{
	    my $tgtu =  new RDF::Redland::URI ($tgt);
	    my $arcu =  new RDF::Redland::URI ($arc);
	    my $model=$c->model("ModelAdaptor");
	    $string .= " TGT:" . $tgtu->as_string();
	    $string .= " ARC:" . $arcu->as_string();
	    my $statement2=new RDF::Redland::Statement($tgtu,$arcu,undef);
	    my(@sources)=  $model->find_statements ($statement2);
	    foreach my $s (@sources)
	    {
		$string .= $s ->as_string(). "\n";
	    }
	}
	else
	{
	    $c->response->body('No URI');
	}
	$c->stash->{message}  = 'targets are :'. $string;	
} 


sub SourcesRHSU : PathPart('SourcesRHSU') Chained('Model') Args(0) {
	my ( $self, $c ) = @_;
	my $arc =  $c->request->param( 'ARC' );
	my $p = undef;
	my $string = "";
	if ( $arc)
	{
	    my $arcu =  new RDF::Redland::URI ($arc);
	    my $model=$c->model("ModelAdaptor");
	    $string .= " ARC:" . $arcu->as_string();
	    my $statement2=new RDF::Redland::Statement(undef,$arcu,undef);
	    my(@sources)=  $model->find_statements ($statement2);

	    my %arcs;
	    foreach my $s (@sources)
	    {
		$arcs{$s->object()->as_string()}++;		
	    }
	    foreach my $s (sort keys %arcs)
	    {
		my $c2 = $arcs{$s};
		$string .= "s $s c $c2<p>";
	    }

	}
	else
	{
	    $c->response->body('No URI');
	}
	$c->response->body('targets are :'. $string);
	$c->stash->{message}  = 'targets are :'. $string;	
} 

sub FindAll : PathPart('FindAll') Chained('Model') Args(0) {
	my ( $self, $c ) = @_;
	my $src =  $c->request->param( 'SOURCE' );
	my $arc =  $c->request->param( 'ARC' );
	my $tgt =  $c->request->param( 'TARGET' );

	my $p = undef;
	my $string = "";

	my $tgtu =undef;
	$tgtu = new RDF::Redland::URI ($tgt) if  $tgt;

	my $arcu =  undef;
	$arcu = new RDF::Redland::URI ($arc) if $arc;

	my $srcu =  undef;
	$srcu = new RDF::Redland::URI ($src) if $src;

	$string .= "Query TARGET ". $tgtu->as_string() . "<p>" if $tgtu;
	$string .= "Query SOURCE ". $srcu->as_string() . "<p>" if $srcu;
	$string .= "Query ARC "   . $arcu->as_string() . "<p>" if $arcu;
	

	my $model=$c->model("ModelAdaptor");
	
	my $statement2=new RDF::Redland::Statement($srcu,$arcu,$tgtu);
	my(@sources)=  $model->find_statements ($statement2);
	
#	my %arcs;
	foreach my $s (@sources)
	{
	    $string .= "s ". $s->as_string() . "<p>";
	    #$arcs{$s->object()->as_string()}++;		
	}

#	foreach my $s (sort keys %arcs)
#	{
#	    my $c2 = $arcs{$s};
#	    $string .= "s $s c $c2<p>";
#	}
	
	$c->stash->{message}  = 'results are :'. $string;	
	$c->response->body($string);
} 


sub with_arc : PathPart('Arcs') Chained('Model')   Args(0) {
#http://librdf.org/docs/pod/RDF/Redland/Model.html
#http://svn.librdf.org/view/perl/trunk/perl/lib/RDF/Redland/Model.pm?view=markup
#
#SOURCE ARC
	my ( $self, $c ) = @_;
	my $arc =  $c->request->param( 'ARC' );
	my $p = undef;
	my $string = "";
	if ( $arc)
	{
	    my $arcu =  new RDF::Redland::URI ($arc);

	    my $model=$c->model("ModelAdaptor");

# targets SOURCE ARC
#    Get all target RDF::Redland::Node objects for a given source SOURCE, arc ARC RDF::Redland :Node objects as a list of RDF::Redland::Node objects.

	    $string .= " ARC:" . $arcu->as_string();
	    my $statement2=new RDF::Redland::Statement(undef,$arcu,undef);
	    
	    warn "TEST";
	    my(@sources)=  $model->find_statements ($statement2);

	    warn "TEST2";
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

#       $c->stash->{template} = 'arcs.html';
	$c->stash->{message}  = 'arcs are :'. $string;
	
} 


## just loop over all the objects and collect the arcs

sub unique_arcs : PathPart('ArcTypes') Chained('Model') Args(0) {
#http://librdf.org/docs/pod/RDF/Redland/Model.html
#http://svn.librdf.org/view/perl/trunk/perl/lib/RDF/Redland/Model.pm?view=markup
#
#SOURCE ARC
	my ( $self, $c ) = @_;
	my $p = undef;
	my $string = "";
	my $model=$c->model("ModelAdaptor");
	my $statement2=new RDF::Redland::Statement(undef,undef,undef);
	my(@sources)=  $model->find_statements ($statement2);
	my %arcs;
	foreach my $s (@sources)
	{
	    $arcs{$s->predicate()->as_string()}++;

	}
	foreach my $s (sort keys %arcs)
	{
	    my $c2 = $arcs{$s};
	    $string .= "s $s c $c2<p>";
	}
	$c->response->body($string);
	$c->stash->{message}  = 'types are :'. $string;
	
} 



sub RunQuery : PathPart('Query') Chained('Model') Args(0) {
	my ( $self, $c ) = @_;
	my $string ="";
	my $query_string =  $c->request->param( 'QUERY' );

	$string = "QUERY STRING : $query_string<P>";

	$c->log->debug('*** Query String : ' .  $query_string . ' ***');

	if ($query_string)
	{
	    my $query=new RDF::Redland::Query($query_string); # default query language
	    my $model=$c->model("ModelAdaptor");
	    my $results=$query->execute($model);
	    
	    if ($results)
	    {
		# or my $results=$model->query_execute($query);
		while(!$results->finished) {
		    for (my $i=0; $i < $results->bindings_count(); $i++) {
			my $name=$results->binding_name($i);
			my $value=$results->binding_value($i);
		    # ... do something with the results
			my $v = $value->as_string();
		    $string .= "n $name v $v<p>";
			
		    }
		    $results->next_result;
		}
	    }
	    else
	    {
		$string = "NO RESULTS for $query_string";
	    }
	}
	else
	{
	    $string = "NO QUERY STRING $query_string";
	}

	    $c->response->body($string);
}

sub query_form :Chained('Model') :PathPart('QueryForm') :Args(0) {
    my ($self, $c) = @_;
    
    # Set the TT template to use
    $c->stash->{template} = 'model/query_form.tt';
}

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
