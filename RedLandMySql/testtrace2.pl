package Template::TieString;
sub TIEHANDLE{}
1;

package T;
use Data::Dumper;

sub stash { return shift;};
sub get { my $self =shift ; 
	  my @vals =@_;
	  my $msg =  "getting "  . join(",",@vals) ;
	  warn $msg;
	  return $msg;
};
sub eval_perl { shift ; return "eval "  . shift };
sub set { shift ; return "setting "  . shift };
sub catch { return shift;};
sub throw { 
    my $self=shift;
    warn "Throw exception";
    warn Dumper($self);
    return $self;
};
sub type { return shift;};
sub test {
    my $context = shift || die "template sub called without context\n";
    my $stash   = $context->stash;
    my $output  = '';
    my $_tt_error;
    
#    eval { 
BLOCK: {
$output .=  "({ \n	attributes: { id : \"";
##noline 2 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'object', 0]);
$output .=  "\" , introspector:\"this is a test\"}, \n	async : true,\n	// Properties below are only used for NON-leaf nodes\n	state: \"open\", // or \"open\"\n";
##noline 161 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
#if ($stash->get(['statement', 0, 'statement_literal', 0, 'value', 0])) 
{
$output .=  "\n	data:{ \ntitle: \"node ";
##noline 8 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'statement_predicate_res', 0, 'uri', 0]);
$output .=  "  : ";
##noline 8 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'statement_literal', 0, 'value', 0]);
$output .=  "\" ,  \n    icon :  \"";
##noline 9 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['c', 0, 'uri_for', [ '/static/icons/Literal.png' ]]);
$output .=  "\"\n\n}, \n	opts : {\n	    url : false\n	}\n  ";
}
#else 
{
$output .=  "\n";
##noline 16 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('TYPE', $stash->get(['statement', 0, 'ObjectStmntPredicate2', [ $stash->get(['RDF', 0, 'type', 0]) ]]));
$output .=  "\n";
##noline 17 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('STYPE', $stash->get(['statement', 0, 'ObjectStmntPredicate', [ $stash->get(['RDF', 0, 'type', 0]) ]]));
$output .=  "\n";
##noline 18 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('TID', $stash->get(['TYPE', 0, 'object', 0]));
$output .=  "\n";
##noline 19 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('PID', $stash->get(['statement', 0, 'predicate', 0]));
$output .=  "\n";
##noline 20 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('SID', $stash->get(['STYPE', 0, 'object', 0]));
$output .=  "\n\n";
##noline 22 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('stag', ('' . "[%"));
$stash->set('etag', ('' . "%]"));
$output .=  "\n\n";
##noline 139 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"

# PERL
$context->throw('perl', 'EVAL_PERL not set')
    unless $context->eval_perl();

$output .=  do {
    my $output = "package Template::Perl;\n";

$output .=  "\nuse Gcc::Structure;\nsub CheckObjectFile\n{\n    my \$val =shift;\n    my \$temp= \"/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/\";\n    my \$template_name=  \$temp . \"object/\${val}.tt\";\n    if (! -f \$template_name )\n    {\n	warn \"creating \$val\";\n	open OUT,\">\$template_name\";\n	print OUT q{//json body of object : };\n	close OUT;\n    }\n    return \$val;\n}\n\nsub CheckFile\n{\n    my \$dir =shift;\n    my \$val =shift;\n    my \$temp= \"/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/\";\n    my \$fulldir = \$temp . \$dir;\n    my \$template_name=  \$fulldir . \"\${val}.tt\";\n    if (!-d \$fulldir)\n    {\n	warn \"creating \$fulldir\";\n	mkdir \$fulldir;\n    }\n\n    if (! -f \$template_name )\n    {\n	warn \"creating \$val file in \$fulldir\";\n	open OUT,\">\$template_name\" or die \"canot open \$template_name\";\n	close OUT;\n    }\n    return \"\${dir}\${val}.tt\";;\n}\n\nsub CheckDetailFiles\n{\n    my \$SUBJECT =shift;\n    my \$PRED =shift;\n    my \$OBJECT =shift;\n    my \$temp= \"/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/\";\n    my \$template_name=  \$temp . \"details/\${SUBJECT}-\${PRED}-\${OBJECT}.tt\";\n    my \@file =(\n	CheckFile(\"jquery/details/subject/\",\$SUBJECT) ,\n	CheckFile(\"jquery/details/pred/\",\$PRED),\n	CheckFile(\"jquery/details/object/\",\$OBJECT)\n	);\n\n    if (! -f \$template_name )\n    {\n	warn \"creating \$template_name\";\n	open OUT,\">\$template_name\";\n	print OUT \$stash->get(\"stag\") . q{INCLUDE } . CheckFile(\"jquery/details/subject/\",\$SUBJECT)  .  \$stash->get(\"etag\") ;\n	print OUT \$stash->get(\"stag\") . q{INCLUDE } . CheckFile(\"jquery/details/pred/\",\$PRED)        .  \$stash->get(\"etag\") ;\n	print OUT \$stash->get(\"stag\") . q{INCLUDE } . CheckFile(\"jquery/details/object/\",\$OBJECT)    .  \$stash->get(\"etag\") ;\n	close OUT;\n    }\n\n}\n\n#### ICON \n##create an default icon if there is none.\nsub MakeIcon\n{\n    my \$val =shift;\n    my \$temp= \"/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/\";\n    my \$template_name=  \$temp . \"/static/icons/\${val}.svg\";\n    my \$png=  \$temp . \"/static/icons/\${val}.png\";\n\n    if (! -f \$template_name )\n    {\n	warn \"creating \$val\";\n	use File::Copy;\n	copy(\$temp . \"/static/icons/type.svg\",\$template_name);\n	copy(\$temp . \"/static/icons/type.png\",\$png);\n\n    }\n    else\n    {\nif ((stat \$template_name)[9] > (stat \$png)[9]){   # Compare mtime stamps\n	    print \"A is newer than B; discarding B.\\n\";\n#    unlink \"B\" or die \"B: \$!\\n\";\n	    system(\"inkscape  \$template_name --export-png=\$png --export-width=16 --export-height=16 --without-gui \");\n#	    system(\"inkscape  \$template_name --export-png=\$png --export-width=64 --export-height=64 --without-gui \");\n	}\n    }\n\n}\n\n	\$stash->set(\"template_name_tid\" =>  CheckObjectFile(Gcc::Structure::GetRev(\$stash->get(\"TID\")) ));\n	\$stash->set(\"template_name_pid\" =>  CheckObjectFile(Gcc::Structure::GetRev(\$stash->get(\"PID\")) ));\n	\$stash->set(\"template_name_sid\" =>  CheckObjectFile(Gcc::Structure::GetRev(\$stash->get(\"SID\")) ));\n\nCheckDetailFile (\n    \$stash->get(\"template_name_sid\"),\n    \$stash->get(\"template_name_pid\"),\n    \$stash->get(\"template_name_tid\")\n);\n\nmy \$id = Gcc::Structure::GetRev(\$stash->get(\"TID\"));\nmy \$val = CheckObjectFile(\$id);\nMakeIcon (\$val);\n\$stash->set(\"template_name_tid\" =>  \$val );\n\n\$id = Gcc::Structure::GetRev(\$stash->get(\"PID\"));\nmy \$pval = CheckObjectFile(\$id);\nMakeIcon (\$pval);\n\$stash->set(\"template_name_pid\" =>  \$pval );\n\n";

    local($Template::Perl::context) = $context;
    local($Template::Perl::stash)   = $stash;

    my $_tt_result = '';
    tie *Template::Perl::PERLOUT, 'Template::TieString', \$_tt_result;
    my $_tt_save_stdout = select *Template::Perl::PERLOUT;

    eval $output;
    select $_tt_save_stdout;
    $context->throw($@) if $@;
    $_tt_result;
};

$output .=  "\n";
##noline 1 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('template_name', ("jquery/object/" . $stash->get('template_name_tid') . ".tt"));
$output .=  "\n//	attributes: { \"template_type\" : \"";
##noline 141 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get('template_name_tid');
$output .=  "\" }, \n\n	data:{ \n\n";
##noline 1 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$stash->set('detail_template_name', ("jquery/details/" . $stash->get('template_name_sid') . "-" . $stash->get('template_name_pid') . "-" . $stash->get('template_name_tid') . ".tt"));
$output .=  "\n";
$output .=  "\n";
$output .=  "\n";
$output .=  "\",%]\n";
$output .=  "\n	       title:  \" ";
##noline 150 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get('template_name_sid');
##noline 150 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get('template_name_pid');
$output .=  " ";
##noline 150 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get('template_name_tid');
$output .=  " |";
##noline 150 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get('node_children');
$output .=  "| / ";
##noline 150 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'statement_object_res', 0, 'uri', 0]);
$output .=  " ! ";
##noline 150 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'ObjectStmntPredicate', [ $stash->get(['statement', 0, 'predicate', 0]) ], 'ObjectStmntPredicate2', [ $stash->get(['RDF', 0, 'type', 0]) ], 'statement_object_res', 0, 'uri', 0]);
$output .=  ".  \",\n";
$output .=  "\n icon :  \"";
##noline 1 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['c', 0, 'uri_for', [ ("/static/icons/" . $stash->get('template_name_tid') . ".png") ]]);
$output .=  "\",\n \n}, \n    //    attributes: { \"predicate\" : \"";
##noline 155 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'statement_predicate_res', 0, 'uri', 0]);
$output .=  "\" , \"object\" : \"";
##noline 155 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'statement_object_res', 0, 'uri', 0]);
$output .=  "\" }\n\n	opts : {\n	    method : \"GET\",\n	    url : \"";
##noline 159 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['c', 0, 'uri_for', [ '/jquery/json/' ]]);
##noline 159 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/data_item.tt"
$output .=  $stash->get(['statement', 0, 'object', 0]);
$output .=  "\"\n	}\n";
}

$output .=  "\n\n}),\n";
    } 
#};
print $output;
    if ($@) {
        $_tt_error = $context->catch($@, \$output);
        die $_tt_error unless $_tt_error->type eq 'return';
    }

    return $output;
}
print test( bless({ stash => {} },"T"));
