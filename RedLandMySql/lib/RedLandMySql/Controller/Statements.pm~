package RedLandMySql::Controller::Statements;

use strict;
use warnings;
use parent 'Catalyst::Controller';
use Data::Dumper;

=head1 NAME

RedLandMySql::Controller::Statements - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

#sub index : {
#    my ( $self, $c ) = @_;
#    my $rs = $c->model('DB::Statements338333539836370388');
#    $c->stash->{template} = 'books/list.tt2';
#    $c->response->body('Matched RedLandMySql::Controller::Statements in Statements.');
#}
sub _dumper_hook {
    $_[0] = bless {
      %{ $_[0] },
      result_source => undef,
    }, ref($_[0]);
  }




sub list2 :   Path('/statements')   CaptureArgs(1)
{

}

sub list :   Path('/statements/list')   Args(1)
{
    # Retrieve the usual Perl OO '$self' for this object. $c is the Catalyst
    # 'Context' that's used to 'glue together' the various components
    # that make up the application
    my ($self, $c) = @_;
    
    # Retrieve all of the book records as book model objects and store in the
    # stash where they can be accessed by the TT template
    $c->stash->{statements} = [$c->model('DB::Statements17546201007601059027')->all];
    # But, for now, use this code until we create the model later
    #$c->stash->{books} = '';
    
    # Set the TT template to use.  You will almost always want to do this
    # in your action methods (action methods respond to user input in
    # your controllers).
#        $c->stash->{template} = 'books/list.tt2';
#	$c->stash->{template} = 'books/list.tt2';

}

sub DumpResults
{
    my ($self, $c) = @_;
   my $string = "";
#   local $Data::Dumper::Freezer = '_dumper_hook';
   foreach my $c (@{$c->stash->{statements} }) {
       $string .= 
	   Dumper({$c->get_columns()}) .
	   "\n<p>";
   }
   $c->response->body(   $string );
#    return $c->stash->{statements};

}

sub subjects :   Path('/statements/subjects')    Args(1) 
{
    my ($self, $c, $sid) = @_;
    $c->stash->{statements} = [
	$c->model('DB::Statements17546201007601059027')->search(
	    {
		subject => { '=', $sid },
		
	    },
	    {
#		'+select' => [
		'select' => [
		    [\'statement_object_res.uri AS statement_object_res_uri'],
		    [\'statement_subject_res.uri AS statement_object_res_uri'],
		    [\'statement_predicate_res.uri AS statement_object_res_uri']  
		    ],
		join => [
		    "statement_object_res"	,
		    "statement_subject_res"	,
		    "statement_predicate_res"	
		],

#		    prefetch => [
#    "Resources"	,
#		    "Literals"	,
#		],
	    }
	)
	];
    $c->stash->{template} = 'statements/list.tt';
    # $c->stash->{literals} = [
    # 	$c->model('DB::Literals')->search(
    # 	    {
    # 		ID => { '=', $sid },
    # 	    }
    # 	)
    # 	];
    # $c->stash->{resources} = [
    # 	$c->model('DB::Resources')->search(
    # 	    {
    # 		ID => { '=', $sid },
    # 	    }
    # 	)
    # 	];


#print $table->output();
DumpResults    ($self, $c);
}

sub predicate :   Path('/statements/predicate')    Args(1) 
{
    my ($self, $c, $sid) = @_;
    $c->stash->{statements} = [
	$c->model('DB::Statements17546201007601059027')->search(
	    {
		predicate => { '=', $sid },
	    }
	)
	];
    $c->stash->{template} = 'statements/list.tt';
    $c->stash->{literals} = [
	$c->model('DB::Literals')->search(
	    {
		ID => { '=', $sid },
	    }
	)
	];
    $c->stash->{resources} = [
	$c->model('DB::Resources')->search(
	    {
		ID => { '=', $sid },
	    }
	)
	];

}

sub object :   Path('/statements/object')    Args(1) 
{
    my ($self, $c, $sid) = @_;
    $c->stash->{statements} = [
	$c->model('DB::Statements17546201007601059027')->search(
	    {
		object => { '=', $sid },
	    }
	)
	];

    $c->stash->{literals} = [
	$c->model('DB::Literals')->search(
	    {
		ID => { '=', $sid },
	    }
	)
	];

    $c->stash->{resources} = [
	$c->model('DB::Resources')->search(
	    {
		ID => { '=', $sid },
	    }
	)
	];

    $c->stash->{template} = 'statements/list.tt';

}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
