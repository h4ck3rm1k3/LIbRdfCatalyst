package LibRdf::Controller::OWL;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

LibRdf::Controller::OWL - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LibRdf::Controller::OWL in OWL.');
}

sub OWL :PathPart('OWL')  Chained('/') CaptureArgs(0)  
{

} 
sub Ontology : PathPart('Ontology') Chained('OWL') Args(0) 
{
    #<owl:Ontology rdf:about="http://usefulinc.com/ns/doap#">
}

sub Imports : PathPart('Imports') Chained('Ontology') Args(0) 
{
#<owl:imports rdf:resource="http://xmlns.com/foaf/0.1/index.rdf"/>
}

sub DC : PathPart('DC') Chained('OWL') Args(1) 
{ 
    # dublin core
}

sub Title  : PathPart('Title') Chained('DC') Args(1) 
{
#<dc:title>Description of a Project (DOAP) vocabulary</dc:title>
}
sub Description  : PathPart('Description') Chained('DC') Args(1) 
{
#<dc:description>The Description of a Project (DOAP) vocabulary, described using W3C RDF Schema and the Web Ontology Language.</dc:description>
}

sub Class 
{
#<rdfs:Class rdf:about="http://usefulinc.com/ns/doap#Project">
}

#<rdfs:isDefinedBy rdf:resource="http://usefulinc.com/ns/doap#"/>
#<rdfs:label xml:lang="en">Project</rdfs:label>
#<rdfs:comment xml:lang="en">A project.</rdfs:comment>
#<rdfs:subClassOf rdf:resource="http://xmlns.com/wordnet/1.6/Project"/>

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
