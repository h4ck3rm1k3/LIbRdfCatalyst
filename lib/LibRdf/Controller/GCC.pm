package LibRdf::Controller::GCC;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

LibRdf::Controller::GCC - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

# the uri of the treecode
our $uri_rdfs_str= "http://www.w3.org/2000/01/rdf-schema#";
our $uri_rdf_str ="http://www.w3.org/1999/02/22-rdf-syntax-ns#";


## urils
our $URI_TREECODE   = new RDF::Redland::URI ('http://introspector.sf.net/2003/08/16/introspector.owl#tree-code-ref');;
our $URI_rdf        = new RDF::Redland::URI ($uri_rdf_str);
our $URI_rdfs       = new RDF::Redland::URI ($uri_rdfs_str);
our $URI_owl        = new RDF::Redland::URI ("http://www.w3.org/2002/07/owl#");

##
our $uri_rdfs_class = new RDF::Redland::URI ($uri_rdfs_str . "Class");

our $uri_rdf_type   = new RDF::Redland::URI ($uri_rdf_str   ."type" );
our $uri_rdf_instanceof   = new RDF::Redland::URI ($uri_rdf_str   ."InstanceOf" );



###################################
#
#rdfs:domain is an instance of rdf:Property that is used to state that any resource that has a given property is an instance of one or more classes.
#
#A triple of the form:
#
#    P rdfs:domain C
#states that P is an instance of the class rdf:Property, that C is a instance of the class rdfs:Class and that the resources denoted by the subjects of triples whose predicate is P are instances of the class C.
our $uri_rdfs_domain = new RDF::Redland::URI ($uri_rdfs_str . "domain");



#rdf:type is an instance of rdf:Property that is used to state that a resource is an instance of a class.
#A triple of the form:
#
#    R rdf:type C
#states that C is an instance of rdfs:Class and R is an instance of C.
our $uri_rdfs_range = new RDF::Redland::URI ($uri_rdfs_str . "range");
    

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LibRdf::Controller::GCC in GCC.');
}


sub Gcc :PathPart('Gcc')  Chained('/') CaptureArgs(0)  {
    my ( $self, $c ) = @_;

    $c->response->body('in Gcc. You should not see this!.');
}

# create an ontology from a gcc dump
# the first level here will describe the model of the gcc nodes itself
# based on that we will create another model of the input program
# base on that we will create model models of the runtime behaviour

## 
sub CreateOntology
{
    
}

#sub Transform :PathPart('Transform')  Chained('/Gcc') CaptureArgs(0)
#{
#   my ( $self, $c ) = @_;
#    $c->response->body('in transform. You should not see this!.');
#   
#}

#sub TransformTypes :PathPart('Types')  Chained('/Gcc/Transform')  CaptureArgs(0)
#{
#   my ( $self, $c ) = @_;
#    $c->response->body('in transform types. You should not see this!.');
#    
#}

# transform the types of data 
sub TransformNodeTypes  : PathPart('Targets') Chained('Gcc') Args(0)
{
    ## get all the node types and convert them 
  #http://localhost:3000/Model/Arcs?&ARC=

#<rdfs:Class rdf:about="thing">
# <rdfs:isDefinedBy rdf:resource="defined by"/>
#  <rdfs:label>LABEL</rdfs:label>
#  <rdfs:comment>Comment.</rdfs:comment>
#</rdfs:Class>


    my ( $self, $c ) = @_;
    my $p = undef;
    my $string = "";
    my $model=$c->model("ModelAdaptor");
    my $statement2=new RDF::Redland::Statement(undef,$URI_TREECODE,undef);
    my(@sources)=  $model->find_statements ($statement2);
    my %arcs;
    foreach my $s (@sources)
    {

	my $obj = $s->object();
	my $st = $s->object()->as_string();

	if (! $arcs{$st}++)
	{
	    # first one
	    $string .= "s $st <p>";

	    #LibRdf::Controller::OWL::C
	    #<http://www.w3.org/2000/01/rdf-schema#Resource> 

	    #<http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Class> .
	    my $classtatement=new RDF::Redland::Statement($obj,$uri_rdf_type,$uri_rdfs_class);
	    my $s2 = $classtatement->as_string();
	    $string .= "s $s2 <p>";
	    $model->add_statement($classtatement);
	}
	
    }
    $c->response->body($string);
    $c->stash->{message}  = 'types are :'. $string;
    
    $c->model("ModelAdaptor")->sync();
}


sub RunQuery 
{
    my $c=shift;
    my $query_string =  shift;
    
    $c->log->debug('*** Query String : ' .  $query_string . ' ***');
    my @res;
    if ($query_string)
    {
	    my $query=new RDF::Redland::Query($query_string); # default query language
	    my $model=$c->model("ModelAdaptor");
	    my $results=$query->execute($model);
	    
	    if ($results)
	    {
		# or my $results=$model->query_execute($query);
		while(!$results->finished) {
		    my %res;
		    for (my $i=0; $i < $results->bindings_count(); $i++) {
			my $name=$results->binding_name($i);
			my $value=$results->binding_value($i);
			# ... do something with the results
#e			my $v = $value;
			$res{$name}=$value;
		    }
		    push @res,\%res;
		    $results->next_result;
		}
	    }
	    else
	    {
		$c->log->debug('*** No results : ' .  $query_string . ' ***');

	    }
	}
	else
	{
	    $c->log->debug('*** No Query! ');
	}
    return @res;
}

# transform the types of data 
sub TransformFieldTypes   : PathPart('Fields') Chained('Gcc') Args(0)
{
    my ( $self, $c ) = @_;
    my $query = "SELECT ?treecoderef,?predicate WHERE (?x,  ?predicate , ?z ) (?x,  <http://introspector.sf.net/2003/08/16/introspector.owl#tree-code-ref> , ?treecoderef )";
    my @results = RunQuery ($c,$query); 

    my $string = "run query $query";
    my $model=$c->model("ModelAdaptor");
    foreach my $x (@results)
    {
	my $ref   = $x->{treecoderef};
	my $field = $x->{predicate};
#	$string .= "Ref $ref Field $field\n";

	# now we make a statement that the treecoderef is the domain of this predicate
	    my $classtatement=new RDF::Redland::Statement($field,$uri_rdfs_domain,$ref);
	    my $s2 = $classtatement->as_string();
	    $string .= "s $s2 <p>";
	    $model->add_statement($classtatement);
	
    }
    $c->response->body($string);
    $c->stash->{message}  = 'types are :'. $string;
    $c->model("ModelAdaptor")->sync();

}

sub TransformFieldRangeTypes   : PathPart('FieldRange') Chained('Gcc') Args(0)
{
    my ( $self, $c ) = @_;
    my $query = "SELECT ?treecoderef,?predicate WHERE (?subject,  ?predicate , ?object ) (?object,  <http://introspector.sf.net/2003/08/16/introspector.owl#tree-code-ref> , ?treecoderef )";
    my @results = RunQuery ($c,$query); 

    my $string = "run query $query";
    my $model=$c->model("ModelAdaptor");
    foreach my $x (@results)
    {
	my $ref   = $x->{treecoderef};
	my $field = $x->{predicate};

	# now we make a statement that the treecoderef is the domain of this predicate
	    my $classtatement=new RDF::Redland::Statement($field,$uri_rdfs_range,$ref);
	    my $s2 = $classtatement->as_string();
	    $string .= "s $s2 <p>";
	    $model->add_statement($classtatement);       
    }
    $c->response->body($string);
    $c->stash->{message}  = 'types are :'. $string;
    $c->model("ModelAdaptor")->sync();
}



## make all the http://introspector.sf.net/2003/08/16/introspector.owl#tree-code-ref int instacnes.
#
#instance of

# transform the types of data 
sub AddNodeTypes  : PathPart('AddNodeTypes') Chained('Gcc') Args(0)
{
    ## get all the node types and convert them 
  #http://localhost:3000/Model/Arcs?&ARC=

#<rdfs:Class rdf:about="thing">
# <rdfs:isDefinedBy rdf:resource="defined by"/>
#  <rdfs:label>LABEL</rdfs:label>
#  <rdfs:comment>Comment.</rdfs:comment>
#</rdfs:Class>


    my ( $self, $c ) = @_;
    my $p = undef;
    my $string = "";
    my $model=$c->model("ModelAdaptor");
    my $statement2=new RDF::Redland::Statement(undef,$URI_TREECODE,undef);
    my(@sources)=  $model->find_statements ($statement2);
    my %arcs;
    my $count=0;
    foreach my $s (@sources)
    {
	my $obj = $s->object();
	my $subj = $s->subject();

	my $classtatement=new RDF::Redland::Statement($subj,$uri_rdf_instanceof,$obj);
	my $s2 = $classtatement->as_string();
#	$string .= "s $s2 <p>";
	$count++;
	$model->add_statement($classtatement);
    }
    $string .= 'added count :'. $count;   
    $c->response->body($string);
    $c->stash->{message}  = $string;
    $c->model("ModelAdaptor")->sync();
}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
