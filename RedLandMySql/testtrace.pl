
package Stash2;
1;

package StashError;
sub type {
    return "return";
}
1;

package Stash;

sub stash{
    #print "template called";
    my $obj = {};
    bless $obj,Stash2;
    return $obj;
};

sub catch{
    print "template called";
    my $obj = {};
    bless $obj,StashError;
    return $obj;

};

1;

package Main;

# [debug] "GET" request for "statements/subjects/15387647212415934621" from "127.0.0.1"
# [debug] Path is "statements/subjects"
# [debug] Arguments are "15387647212415934621"
# [debug] Rendering template "statements/list.tt"
# [error] Couldn't render template "file error - parse error - statements/list.tt line 8-10: unexpected token (>)
#   [% statement.search_related('object_resources')->first()->get_column("uri") % ]

#      <a href="[% c.uri_for('/') %]"
# [error] Couldn't render template "file error - parse error - statements/list.tt line 8-10: unexpected token (>)
#   [% statement.search_related('object_resources')->first()->get_column("uri") % ]

#      <a href="[% c.uri_for('/') %]"
# [info] Request took 0.055847s (17.906/s)
# .------------------------------------------------------------+-----------.
# | Action                                                     | Time      |
# +------------------------------------------------------------+-----------+
# | /statements/subjects                                       | 0.003254s |
# | /end                                                       | 0.009094s |
# |  -> RedLandMySql::View::TT->process                        | 0.008028s |
# '------------------------------------------------------------+-----------'

# SELECT me.subject, me.predicate, me.object, me.context FROM Statements17546201007601059027 me WHERE ( subject = ? ): '15387647212415934621'
# [Template::Service] process(statements/list.tt, HASH(0xb4d0620))
# [Template::Context] template(statements/list.tt)
# [Template::Context] looking for block [statements/list.tt]
# [Template::Context] asking providers for [statements/list.tt] []
# [Template::Provider] _fetch_path(statements/list.tt)
# [Template::Provider] searching path: /media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt
# [Template::Provider] _fetch(/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt)
# [Template::Provider] _refresh([ <undef>, /media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt, Template::Document=HASH(0xb5b3578), 1258457511, <undef>, 0])
# [Template::Provider] refreshing cache file /media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt
# [Template::Provider] _load(/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt, statements/list.tt)
# [Template::Provider] _compile(HASH(0xb484070), <no compfile>)
# [info] *** Request 12 (0.025/s) [11366] [Tue Nov 17 12:33:55 2009] ***
# [debug] "GET" request for "statements/subjects/15387647212415934621" from "127.0.0.1"
# [debug] Path is "statements/subjects"
# [debug] Arguments are "15387647212415934621"
# [debug] Rendering template "statements/list.tt"
# [error] Couldn't render template "file error - parse error - statements/list.tt line 8: unexpected token (>)
#   [% statement.search_related('object_resources')->first()->get_column("uri") %]"
# [error] Couldn't render template "file error - parse error - statements/list.tt line 8: unexpected token (>)
#   [% statement.search_related('object_resources')->first()->get_column("uri") %]"
# [info] Request took 0.061837s (16.172/s)
# .------------------------------------------------------------+-----------.
# | Action                                                     | Time      |
# +------------------------------------------------------------+-----------+
# | /statements/subjects                                       | 0.003247s |
# | /end                                                       | 0.008759s |
# |  -> RedLandMySql::View::TT->process                        | 0.007721s |
# '------------------------------------------------------------+-----------'

# SELECT me.subject, me.predicate, me.object, me.context FROM Statements17546201007601059027 me WHERE ( subject = ? ): '15387647212415934621'
# [Template::Service] process(statements/list.tt, HASH(0xb488458))
# [Template::Context] template(statements/list.tt)
# [Template::Context] looking for block [statements/list.tt]
# [Template::Context] asking providers for [statements/list.tt] []
# [Template::Provider] _fetch_path(statements/list.tt)
# [Template::Provider] searching path: /media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt
# [Template::Provider] _fetch(/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt)
# [Template::Provider] _refresh([ <undef>, /media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt, Template::Document=HASH(0xb5b3578), 1258457511, <undef>, 0])
# [Template::Provider] refreshing cache file /media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt
# [Template::Provider] _load(/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt, statements/list.tt)
# [Template::Provider] _compile(HASH(0xb4cd020), <no compfile>)
# [Template::Parser] compiled main template document block:
sub template 
{
    my $context = shift || die "template sub called without context\n";
     my $stash   = $context->stash;
     my $output  = '';
     my $_tt_error;
    
     eval { BLOCK: {
# #line 1 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
	 $output .=  $context->debugging('msg', { 'line' => '1', 'text' => 'META title = \'Statement List\'', 'file' => 'statements/list.tt' }); ## DEBUG ##
	 $output .=  "  <table>\n  <tr><th>Subject</th><th>Predicate</th><th>Object</th></tr>\n\n  ";
# #line 5 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
	 $output .=  $context->debugging('msg', { 'line' => '5', 'text' => 'FOREACH statement IN statements', 'file' => 'statements/list.tt' }); ## DEBUG ##
# #line 22 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
# # FOREACH 
 do {
     my ($_tt_value, $_tt_error, $_tt_oldloop);
     my $_tt_list = $stash->get('statements');
    
     unless (UNIVERSAL::isa($_tt_list, 'Template::Iterator')) {
         $_tt_list = Template::Config->iterator($_tt_list)
             || die $Template::Config::ERROR, "\n"; 
     }

     ($_tt_value, $_tt_error) = $_tt_list->get_first();
     eval { $_tt_oldloop = $stash->get('loop') };
     $stash->set('loop', $_tt_list);
     eval {
FOR5:   while (! $_tt_error) {
             $stash->{'statement'} = $_tt_value;
 $output .=  "  <tr>\n    <td>\n";
 #line 8 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $context->debugging('msg', { 'line' => '8', 'text' => 'statement.search_related(\'object_resources\').first().get_column("uri")', 'file' => 'statements/list.tt' }); ## DEBUG ##
 #line 8 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $stash->get(['statement', 0, 'search_related', [ 'object_resources' ], 'first', 0, 'get_column', [ 'uri' ]]);
 $output .=  "\n\n     <a href=\"";
 #line 10 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $context->debugging('msg', { 'line' => '10', 'text' => 'c.uri_for(\'/\')', 'file' => 'statements/list.tt' }); ## DEBUG ##
 #line 10 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $stash->get(['c', 0, 'uri_for', [ '/' ]]);
 $output .=  "statements/subjects/";
 #line 10 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $context->debugging('msg', { 'line' => '10', 'text' => 'statement.subject', 'file' => 'statements/list.tt' }); ## DEBUG ##
 #line 10 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $stash->get(['statement', 0, 'subject', 0]);
 $output .=  "\">Subject ";
 #line 10 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $context->debugging('msg', { 'line' => '10', 'text' => 'statement.subject', 'file' => 'statements/list.tt' }); ## DEBUG ##
 #line 10 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $stash->get(['statement', 0, 'subject', 0]);
 $output .=  " </a>\n    </td>\n    <td>\n      <a href=\"";
 #line 13 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $context->debugging('msg', { 'line' => '13', 'text' => 'c.uri_for(\'/\')', 'file' => 'statements/list.tt' }); ## DEBUG ##
 #line 13 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
 $output .=  $stash->get(['c', 0, 'uri_for', [ '/' ]]);
 $output .=  "statements/predicate/";
# line 13 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $context->debugging('msg', { 'line' => '13', 'text' => 'statement.predicate', 'file' => 'statements/list.tt' }); ## DEBUG ##
#line 13 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $stash->get(['statement', 0, 'predicate', 0]);
$output .=  "\">Predicate ";
#line 13 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $context->debugging('msg', { 'line' => '13', 'text' => 'statement.predicate', 'file' => 'statements/list.tt' }); ## DEBUG ##
#line 13 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $stash->get(['statement', 0, 'predicate', 0]);
$output .=  " </a>\n    </td>\n\n    <td>\n      <a href=\"";
#line 17 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $context->debugging('msg', { 'line' => '17', 'text' => 'c.uri_for(\'/\')', 'file' => 'statements/list.tt' }); ## DEBUG ##
#line 17 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $stash->get(['c', 0, 'uri_for', [ '/' ]]);
$output .=  "statements/object/";
#line 17 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $context->debugging('msg', { 'line' => '17', 'text' => 'statement.object', 'file' => 'statements/list.tt' }); ## DEBUG ##
#line 17 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $stash->get(['statement', 0, 'object', 0]);
$output .=  "\">Object ";
#line 17 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $context->debugging('msg', { 'line' => '17', 'text' => 'statement.object', 'file' => 'statements/list.tt' }); ## DEBUG ##
#line 17 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $stash->get(['statement', 0, 'object', 0]);
$output .=  " </a>\n    </td>\n\n    <td></td>\n  </tr>\n  ";
#line 22 "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/statements/list.tt"
$output .=  $context->debugging('msg', { 'line' => '22', 'text' => 'END', 'file' => 'statements/list.tt' }); ## DEBUG ##;
            ($_tt_value, $_tt_error) = $_tt_list->get_next();
        }
    };
    $stash->set('loop', $_tt_oldloop);
    die $@ if $@;
    $_tt_error = 0 if $_tt_error && $_tt_error eq Template::Constants::STATUS_DONE;
    die $_tt_error if $_tt_error;
};

$output .=  "\n</table>\n";
    } };
    if ($@) {
        $_tt_error = $context->catch($@, \$output);
        die $_tt_error unless $_tt_error->type eq 'return';
    }

    return $output;
}

# [Template::Service] PROCESS: Template::Document=HASH(0xb2a68a0)
# [Template::Context] process([ Template::Document=HASH(0xb2a68a0) ], <no params>, <unlocalized>)
# [Template::Context] template(Template::Document=HASH(0xb2a68a0))
# SELECT me.id, me.uri FROM Resources me WHERE ( me.id = ? ): '15015140325254999524'
# SELECT me.id, me.uri FROM Resources me WHERE ( me.id = ? ): '2660619012245458557'
# SELECT me.id, me.uri FROM Resources me WHERE ( me.id = ? ): '2345604062526333224'
# [info] *** Request 13 (0.027/s) [11366] [Tue Nov 17 12:34:09 2009] ***
# [debug] "GET" request for "statements/subjects/15387647212415934621" from "127.0.0.1"
# [debug] Path is "statements/subjects"
# [debug] Arguments are "15387647212415934621"
# [debug] Rendering template "statements/list.tt"
# [error] Couldn't render template "undef error - search_related is undefined
# "
# [error] Couldn't render template "undef error - search_related is undefined
# "
# [info] Request took 0.114963s (8.698/s)
# .------------------------------------------------------------+-----------.
# | Action                                                     | Time      |
# +------------------------------------------------------------+-----------+
# | /statements/subjects                                       | 0.003250s |
# | /end                                                       | 0.060633s |
# |  -> RedLandMySql::View::TT->process                        | 0.059625s |
# '------------------------------------------------------------+-----------'

my $context = {
    stash=> {
	statements =>   {}
    }
};
bless $context,"Stash";

print template ($context);
