package LibRdf::Controller::Root;

use strict;
use warnings;
use parent 'Catalyst::Controller';

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

=head1 NAME

LibRdf::Controller::Root - Root Controller for LibRdf

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=cut

=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( $c->welcome_message );
}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

#   this is the beginning of our chain
sub hello : PathPart('hello') Chained('/') CaptureArgs(1) {
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
=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
