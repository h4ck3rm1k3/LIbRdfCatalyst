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
    #my ($_tt_value, $_tt_error, $_tt_oldloop);
    my $_tt_list = $stash->{statements};;
    my ($_tt_value, $_tt_error, $_tt_oldloop);    
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
	$output .=  "\n      ";
	$context->log->debug('*** INSIDE LOOP ***');		    

## object resources
	my $_tt_list_or = $stash->get(['statement', 0, 'object_resources', 0]);
	unless (UNIVERSAL::isa($_tt_list_or, 'Template::Iterator')) {   $_tt_list_or = Template::Config->iterator($_tt_list_or)	|| die $Template::Config::ERROR, "\n"; 	}
	($_tt_value, $_tt_error) = $_tt_list_or->get_first();
	$context->log->debug('ErrorCode'.     $_tt_error);		    
	$stash->{'statementor'} = $_tt_value;
	my $uri=$stash->get(['statementor', 0, 'uri', 0]);
	$output .=  $uri;
	$context->log->debug('URI'.$uri);		    
	$_tt_error = 0 if $_tt_error && $_tt_error eq Template::Constants::STATUS_DONE;
#	$context->log->debug('ErrorCode'.     $_tt_error);		    
	die $_tt_error if $_tt_error;





	
	$output .=  "\n    <td></td>\n  </tr>\n  ";
	($_tt_value, $_tt_error) = $_tt_list->get_next();
	$context->log->debug('ErrorCode'.     $_tt_error);		    

	$context->log->debug('*** INSIDE LOOP2 ***');		    
    }# while not error
    
	$context->log->debug('ErrorCode'.     $_tt_error);		    

    
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
    
    $context->log->debug('*** Finished ***');		    
    $context->response->body(  $output );
    #   $stash->{'message'} =  $output ;
#    print $output;
    
    return $output;
}
