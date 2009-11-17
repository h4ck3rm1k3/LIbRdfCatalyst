

package Error;
sub type {
    return "return";
}
1;


package RedLandMySql::Controller::Statements;

sub mycatch
{
    my ($context,$error,$output);
    warn "Big problem $error";
    my $exception = { error => $error };
    bless $exception,Error;
}

use strict;
use warnings;
use parent 'Catalyst::Controller';
use Data::Dumper;
use Template::Stash;
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
    foreach my $s (@{$c->stash->{statements} }) {
#       $string .= 
#	   Dumper({$c->get_columns()}) .
#	   "\n<p>";
#	$string .= Dumper($s);
#       my $testobject = $s->search_related('object_resource')->first();
       my $testobject = $s->search_related('object_resources')->first();
#	my $s= $s.statement_object_res.uri;

       if ($testobject)
       {
	          $string .= $testobject->get_column("uri");
       }
       my $s2 =$testobject . ref($testobject);
       
       $string .= $s2;
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
		subject => $sid 		
	    }
	)
	];

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

    $c->stash->{template} = 'statements/list.tt';


#    DumpResults    ($self, $c);

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


sub TestTemplate :   Path('/statements/template')    Args(1) 
{
    my $self=shift; # the catalyst object
    my $context = shift || die "template sub called without context\n";
    my $sid=shift;

    $context->stash->{statements} = [
	$context->model('DB::Statements17546201007601059027')->search(
	    {
		subject => $sid 		
	    }
	)
	];

    my $stash = Template::Stash->new($context->{stash});
    
    #my $stash   = ;
    my $output  = 'Hello template';
    my $_tt_error;
    
#    eval { 

	$output .= "Inside the template";

#      BLOCK: {

#	  $output .=  $context->debugging('msg', { 'line' => '1', 'text' => 'META title = \'Statement List\'', 'file' => 'internalized-template' }); ## DEBUG ##
	  
	  $output .=  "    ";

#	  $output .=  $context->debugging('msg', { 'line' => '2', 'text' => 'USE Dumper;', 'file' => 'internalized-template' }); ## DEBUG ##

# USE
#	  $stash->set('Dumper',		      $context->plugin('Dumper'));
	  
	  $output .=  "\n  <table>\n  <tr><th>Subject</th><th>Predicate</th><th>Object</th></tr>\n\n  ";

#	  $output .=  $context->debugging('msg', { 'line' => '3', 'text' => 'FOREACH statement IN statements', 'file' => 'internalized-template' }); ## DEBUG ##

	  
# FOREACH 
#	  do {
	      my ($_tt_value, $_tt_error, $_tt_oldloop);
	      my $_tt_list = $stash->{statements};;
	      
	      unless (UNIVERSAL::isa($_tt_list, 'Template::Iterator')) {
		  $_tt_list = Template::Config->iterator($_tt_list)
		      || die $Template::Config::ERROR, "\n"; 	      }
	      
	      ($_tt_value, $_tt_error) = $_tt_list->get_first();
	      eval { $_tt_oldloop = $stash->get('loop') };
	      $stash->set('loop', $_tt_list);
	     

#	      eval {
		#FOR1: 
		  while (! $_tt_error) {
		      $stash->{'statement'} = $_tt_value;
		      $output .=  "  <tr>\n    <td>\n      ";
#		      $output .=  $context->debugging('msg', { 'line' => '4', 'text' => '#Dumper.dump(statement)', 'file' => 'internalized-template' }); ## DEBUG ##
	      
		      $output .=  "\n      ";
#		      $output .=  $context->debugging('msg', { 'line' => '5', 'text' => 'FOREACH statementor IN statement.object_resources', 'file' => 'internalized-template'} ); ## DEBUG ##
		    
# FOREACH 
#		    do {
			my ($_tt_value, $_tt_error, $_tt_oldloop);
			my $_tt_list = $stash->get(['statement', 0, 'object_resources', 0]);
			
			unless (UNIVERSAL::isa($_tt_list, 'Template::Iterator')) {
			    $_tt_list = Template::Config->iterator($_tt_list)
				|| die $Template::Config::ERROR, "\n"; 
			}
			
			($_tt_value, $_tt_error) = $_tt_list->get_first();
			eval { $_tt_oldloop = $stash->get('loop') };
			$stash->set('loop', $_tt_list);
#			eval {
			    #	  FOR2:   
			    while (! $_tt_error) {
				$stash->{'statementor'} = $_tt_value;
				$output .=  "      ";
				
#				$output .=  $context->debugging('msg', { 'line' => '6', 'text' => 'statementor.uri', 'file' => 'internalized-template' }); ## DEBUG ##
				
				$output .=  $stash->get(['statementor', 0, 'uri', 0]);
				$output .=  "\n      ";
				
#				$output .=  $context->debugging('msg', { 'line' => '7', 'text' => 'END', 'file' => 'internalized-template' }); ## DEBUG ##;
				($_tt_value, $_tt_error) = $_tt_list->get_next();
			    }
#			};
			$stash->set('loop', $_tt_oldloop);
			die $@ if $@;
			$_tt_error = 0 if $_tt_error && $_tt_error eq Template::Constants::STATUS_DONE;
			die $_tt_error if $_tt_error;
#		    }; # do 
		      
		      my $x;
		      
		      $output .=  "\n    <td></td>\n  </tr>\n  ";
		      ($_tt_value, $_tt_error) = $_tt_list->get_next();
		  }# while not error
#	      }; # eval

	      $stash->set('loop', $_tt_oldloop);
	      die $@ if $@;
	      $_tt_error = 0 if $_tt_error && $_tt_error eq Template::Constants::STATUS_DONE;
	      die $_tt_error if $_tt_error;
#	  }; # do 
	
	  $output .=  "\n</table>\n";
#	}
#}
    if ($@) {
        $_tt_error = mycatch($context,$@, \$output);
        die $_tt_error unless $_tt_error->type eq 'return';
    }
    
    
    $context->response->body(  $output );
 #   $stash->{'message'} =  $output ;
#    print $output;

    return $output;
}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
