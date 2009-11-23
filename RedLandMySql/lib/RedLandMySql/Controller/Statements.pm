
package Error;
sub type {
    return "return";
}
1;


package RedLandMySql::Controller::Statements;

use Gcc::Structure;

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

sub convertchains : Path('/statements/convertchains') Args(0)
{
    my ($self, $c, $sid) = @_;
    my @statements = $c->model('DB::Statements17546201007601059027')->search(
	    {
		predicate=> '4114558830764260770'  # http://introspector.sf.net/2003/08/16/introspector.owl#chan 
	    }
	)->all();
    my $results = []; # for the templates
#current.statement_predicate_res.uri eq 'http://introspector.sf.net/2003/08/16/introspector.owl#chan'
    $c->log->debug('*** START ALL  ***');		    
    my %seen;

   
    foreach my $statement (@statements)
    {
	if ($statement)
	{
	    # we record the subject id that we start with 
	    # 
	    my $subject = $statement->get_column("subject"); 	   
	    if (!$seen{$subject})
	    {
		$seen{$subject}++;
		push @{$results},$statement;
		$c->log->debug('*** START ' . $subject . ' ***' .  $seen{$subject} );
		
		my $position =1;

		$c->model('DB::Chainednodes')->new( 
		    {		    
			firstnode => $subject,
			position  => $position,
			object => $subject,
		    }   
		    )->insert; # Auto-increment primary key filled in after INSERT
		
		while ($statement = $statement->search_related('Chained',{predicate=> '4114558830764260770'})->first())
#	while ($statement = $statement->Chained()->first())
		{
		    my $subject2 = $statement->get_column("subject"); 
		    if (! $seen{$subject2})
		    {
			$seen{$subject2}++;
			push @{$results},$statement;			
			$c->log->debug('*** INSIDE S:' . $subject2 . ' ***' .  $seen{$subject2} . ' pos '. $position );		    
			
			$c->model('DB::Chainednodes')->new(
			    {
				firstnode => $subject,
				position  => ++$position,
				object => $subject2,
			    }
			    )->insert; # Auto-increment primary key filled in after INSERT
		    }		   
		}


	    }
	    $c->stash->{results} = $results;
	    $c->stash->{template} = 'statements/chains.tt';  	     
	}
	else
	{
	    $c->log->debug('*** No Data for ' . $sid . ' ***');		    
	}
    }
}

sub followchains : Path('/statements/chain') Args(1)
{
    my ($self, $c, $sid) = @_;
    my $statement = $c->model('DB::Statements17546201007601059027')->search(
	    {
		subject => $sid 		,
		predicate=> '4114558830764260770'  # http://introspector.sf.net/2003/08/16/introspector.owl#chan 
	    }
	)->first;
    my $results = []; # for the templates
#current.statement_predicate_res.uri eq 'http://introspector.sf.net/2003/08/16/introspector.owl#chan'
    if ($statement)
    {
	push @{$results},$statement;
	$c->log->debug('*** START ' . $statement->get_column("subject") . ' ***');		    
	while ($statement = $statement->search_related('Chained',{predicate=> '4114558830764260770'})->first())
#	while ($statement = $statement->Chained()->first())
	{
	    push @{$results},$statement;
	    $c->log->debug('*** INSIDE S:' . $statement->get_column("subject") . ' ***');		    
	    $c->log->debug('*** P:' . $statement->get_column("predicate") . ' ***');		    	    
	    $c->log->debug('*** O: ' . $statement->get_column("object") . ' ***');		    
	}
	$c->stash->{results} = $results;
	$c->stash->{template} = 'statements/chains.tt';  	     
    }
    else
    {
	$c->log->debug('*** No Data for ' . $sid . ' ***');		    
    }
}

sub ListChains :   Path('/statements/listchains')    Args(1) 
{

    my ($self, $c, $sid) = @_;
    
    my $chains= [
	$c->model('DB::Chainednodes')->search(
	    {
		firstnode => $sid
	    }
	)->all()
	];
    $c->stash->{subject} =  $c->model('DB::Statements17546201007601059027')->search(
	    {
		subject => $sid 		
	    }
	)->first;


#/2003/08/16/introspector.owl#id-4314 id 559S27761647701690  	 3018755155234083761 http://introspector.sf.net/2003/08/16/introspector.owl#valu 
#    foreach my $s (@{$chains})
#    {
#	$c->log->debug('*** value ' . $s . ' ***');		    
#    }
    Gcc::Structure::CreateStash($c->stash);
    $c->stash->{chains} = $chains;
    $c->stash->{subject} = $sid;
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

    $c->stash->{template} = 'statements/subject.tt';


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

sub literals :   Path('/statements/literals')    Args(0) 
{
    my ($self, $c, $sid) = @_;
    $c->stash->{literals} = [
	$c->model('DB::Literals')->search()->all()
	];
    $c->stash->{template} = 'statements/literals.tt';    
}

sub literal :   Path('/statements/literal')    Args(1) 
{
    my ($self, $c, $sid) = @_;
    $c->stash->{literal} = 
	$c->model('DB::Literals')->search({id => $sid})->first()
	;
    $c->stash->{template} = 'statements/literal.tt';    
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


sub Resource :   Path('/statements/resource')    Args(1) 
{
    my ($self, $c, $sid) = @_;
    $c->stash->{resource} = $c->model('DB::Resources')->find({ID => $sid})	;


    $c->stash->{template} = 'statements/resource.tt';
}


sub Types :   Path('/statements/types')    Args(0) 
{
    my ($self, $c, $sid) = @_;
    $c->log->debug('*** ALL TYPES  ***');		    
    $c->log->debug('*** ALL TYPES  ***:' .  $c->model('DB::OwlTypePredicates') );

    $c->stash->{types} = [$c->model('DB::OwlTypePredicates')->search({},{ order_by => 'countobjects desc'})->all()]	;
    $c->stash->{template} = 'statements/types.tt';
}

sub Type :   Path('/statements/type')    Args(1) 
{
    my ($self, $c, $sid) = @_;
    $c->log->debug('***  TYPE : ' . $sid);		    
    $c->stash->{subjects} = [$c->model('DB::OwlTypePredicates')->search({subject_id => $sid},{order_by => 'countobjects desc'})->all()]	;
    $c->stash->{objects} = [$c->model('DB::OwlTypePredicates')->search({object_id => $sid },{order_by => 'countobjects desc'})->all()]	;

    $c->stash->{template} = 'statements/type.tt';
}


sub OwlDomains :   Path('/owl/domains')    Args(0) 
{
    my ($self, $c, $sid) = @_;
    unless ($c->response->content_type) {
        $c->response->content_type('application/xml');
    }

    $c->stash->{types} = [$c->model('DB::OwlTypePredicates')->search({},{ order_by => 'countobjects desc'})->all()]	;
    $c->stash->{template} = 'owl/domains.tt';
}

sub OwlRange :   Path('/owl/ranges')    Args(0) 
{
    my ($self, $c, $sid) = @_;

    unless ($c->response->content_type) {
        $c->response->content_type('application/xml');
    }


    $c->stash->{types} = [$c->model('DB::OwlTypePredicates')->search({},{ order_by => 'countobjects desc'})->all()]	;
    $c->stash->{template} = 'owl/ranges.tt';
}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
