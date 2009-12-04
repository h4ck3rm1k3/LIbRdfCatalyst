

package Gcc::Structure;
use Data::Dumper;
# document the structure of the compiler.
# include all uris 

our %ownstash;
our $g_stash;

sub CreateStash
{
    my $stash=shift;

    warn 'Creating stash'    ;

    $stash->{'OWL'}{'ObjectProperty'} = '1873043916455325203'; #   http://www.w3.org/2002/07/owl'; # ObjectProperty1 %]

    $stash->{'RDFS'}{'Class'} = '712532928204075599'; #   http://www.w3.org/2000/01/rdf-schema'; # Class1 %]
    $stash->{'RDFS'}{'Property'} = '6673891668991303979'; #   http://www.w3.org/2000/01/rdf-schema'; # Property1 %]
    $stash->{'RDFS'}{'domain'} = '2239939339862288424'; #   http://www.w3.org/2000/01/rdf-schema'; # domain1 %]
    $stash->{'RDFS'}{'range'} = '11915351292288268195'; #   http://www.w3.org/2000/01/rdf-schema'; # range1 %]


    $stash->{'RDF'}{'type'} = '2982895206037061277'; #   http://www.w3.org/1999/02/22-rdf-syntax-ns'; # type1 %]
    $stash->{'RDF'}{'rdf_type'} = '2982895206037061277'; #   http://www.w3.org/1999/02/22-rdf-syntax-ns'; # type1 %]


    $stash->{'GCC'}{'addr_expr'} = '15121694316464009706';  #   addr_expr1 %]
    $stash->{'GCC'}{'algn'} = '3463699419612294594'; #   algn1 %]
    $stash->{'GCC'}{'args'} = '1683516950493154650'; #   args1 %]
    $stash->{'GCC'}{'argt'} = '2769146704446691071'; #   argt1 %]
    $stash->{'GCC'}{'array_type'} = '16617296641316102187'; #   array_type1 %]
    $stash->{'GCC'}{'begn'} = '17430755394955437515'; #   begn1 %]
    $stash->{'GCC'}{'bit_and_expr'} = '12746686297674055027'; #   bit_and_expr1 %]
    $stash->{'GCC'}{'bitfield'} = '6394446829195596513'; #   bitfield1 %]
    $stash->{'GCC'}{'body'} = '14920123564075139560'; #   body1 %]
    $stash->{'GCC'}{'boolean_type'} = '8498487305451770129'; #   boolean_type1 %]
    $stash->{'GCC'}{'booleantrue'} = '9081279205792424080'; #   booleantrue1 %]
    $stash->{'GCC'}{'bpos'} = '12558489283916986310'; #   bpos1 %]
    $stash->{'GCC'}{'break_stmt'} = '729518676726590216'; #   break_stmt1 %]
    $stash->{'GCC'}{'call_expr'} = '16555969483281980006'; #   call_expr1 %]
    $stash->{'GCC'}{'chan'} = '4114558830764260770'; #   chan1 %]
    $stash->{'GCC'}{'clnp'} = '3970355797750291277'; #   clnp1 %]
    $stash->{'GCC'}{'cnst'} = '15447793508881526429'; #   cnst1 %]
    $stash->{'GCC'}{'complex_type'} = '12496493282471841459'; #   complex_type1 %]
    $stash->{'GCC'}{'component_ref'} = '6352341228442777724'; #   component_ref1 %]
    $stash->{'GCC'}{'compound_stmt'} = '1649590370193169021'; #   compound_stmt1 %]
    $stash->{'GCC'}{'cond'} = '6882056378800589090'; #   cond1 %]
    $stash->{'GCC'}{'cond_expr'} = '6597742586517559588'; #   cond_expr1 %]
    $stash->{'GCC'}{'const'} = '5658572693438032439'; #   const1 %]
    $stash->{'GCC'}{'const_decl'} = '16663890274115130369'; #   const_decl1 %]
    $stash->{'GCC'}{'convert_expr'} = '10311625089581536808'; #   convert_expr1 %]
    $stash->{'GCC'}{'csts'} = '9561307719596337074'; #   csts1 %]
    $stash->{'GCC'}{'decl'} = '12796642252030655678'; #   decl1 %]
    $stash->{'GCC'}{'decl_stmt'} = '3903779982595783287'; #   decl_stmt1 %]
    $stash->{'GCC'}{'domn'} = '403638557824333524'; #   domn1 %]
    $stash->{'GCC'}{'elts'} = '17281589148047588546'; #   elts1 %]
    $stash->{'GCC'}{'end'} = '15602884528303547261'; #   end1 %]
    $stash->{'GCC'}{'enumeral_type'} = '471320701236103877'; #   enumeral_type1 %]
    $stash->{'GCC'}{'eq_expr'} = '1963347405158255895'; #   eq_expr1 %]
    $stash->{'GCC'}{'expr'} = '15606565242626538736'; #   expr1 %]
    $stash->{'GCC'}{'expr_stmt'} = '11672834489641252853'; #   expr_stmt1 %]
    $stash->{'GCC'}{'extern'} = '12077022596007410172'; #   extern1 %]
    $stash->{'GCC'}{'field_decl'} = '424697566371559633'; #   field_decl1 %]
    $stash->{'GCC'}{'filename'} = '7729150382704805785'; #   filename1 %]
    $stash->{'GCC'}{'flds'} = '9829818324014295513'; #   flds1 %]
    $stash->{'GCC'}{'fn'} = '17865787076711148416'; #   fn1 %]
    $stash->{'GCC'}{'function_decl'} = '1504926891300555131'; #   function_decl1 %]
    $stash->{'GCC'}{'function_type'} = '5630798902154618539'; #   function_type1 %]
    $stash->{'GCC'}{'ge_expr'} = '12791991289915383860'; #   ge_expr1 %]
    $stash->{'GCC'}{'high'} = '2550293406536336236'; #   high1 %]
    $stash->{'GCC'}{'identifier_node'} = '15884583910156211027'; #   identifier_node1 %]
    $stash->{'GCC'}{'if_stmt'} = '14508082844231316967'; #   if_stmt1 %]
    $stash->{'GCC'}{'indirect_ref'} = '845380059125177324'; #   indirect_ref1 %]
    $stash->{'GCC'}{'init'} = '1356438245042226467'; #   init1 %]
    $stash->{'GCC'}{'integer_cst'} = '10682726496861974171'; #   integer_cst1 %]
    $stash->{'GCC'}{'integer_type'} = '4381322092629321835'; #   integer_type1 %]
    $stash->{'GCC'}{'line'} = '13473669242639446765'; #   line1 %]
    $stash->{'GCC'}{'linenumber'} = '4809313179007064510'; #   linenumber1 %]
    $stash->{'GCC'}{'lngt'} = '4576204957388522175'; #   lngt1 %]
    $stash->{'GCC'}{'low'} = '10268554046076623705'; #   low1 %]
    $stash->{'GCC'}{'max'} = '13822447584558540343'; #   max1 %]
    $stash->{'GCC'}{'min'} = '3339521254004920991'; #   min1 %]
    $stash->{'GCC'}{'mngl'} = '6772646006182068100'; #   mngl1 %]
    $stash->{'GCC'}{'modifier'} = '7637172006827845605'; #   modifier1 %]
    $stash->{'GCC'}{'modify_expr'} = '3321072264965677912'; #   modify_expr1 %]
    $stash->{'GCC'}{'name'} = '12412387891609905159'; #   name1 %]
    $stash->{'GCC'}{'ne_expr'} = '16867087564573135677'; #   ne_expr1 %]
    $stash->{'GCC'}{'next'} = '14237244523238252727'; #   next1 %]
    $stash->{'GCC'}{'non_lvalue_expr'} = '15320099648413976456'; #   non_lvalue_expr1 %]
    $stash->{'GCC'}{'nop_expr'} = '5724551445906810068'; #   nop_expr1 %]
    $stash->{'GCC'}{'null'} = '4060978262885395696'; #   null1 %]
    $stash->{'GCC'}{'op_0'} = '691896544957244177'; #   op_01 %]
    $stash->{'GCC'}{'op_1'} = '11219945973304477103'; #   op_11 %]
    $stash->{'GCC'}{'op_2'} = '12256018751638057119'; #   op_21 %]
    $stash->{'GCC'}{'parm_decl'} = '7830676800468631921'; #   parm_decl1 %]
    $stash->{'GCC'}{'plus_expr'} = '6209264463792281744'; #   plus_expr1 %]
    $stash->{'GCC'}{'pointer_type'} = '8942746211297021590'; #   pointer_type1 %]
    $stash->{'GCC'}{'postincrement_expr'} = '1282843889357872837'; #   postincrement_expr1 %]
    $stash->{'GCC'}{'prec'} = '12159439825297578533'; #   prec1 %]
    $stash->{'GCC'}{'preincrement_expr'} = '5460905604010845200'; #   preincrement_expr1 %]
    $stash->{'GCC'}{'prms'} = '13628382504237426965'; #   prms1 %]
    $stash->{'GCC'}{'ptd'} = '2676358461911161944'; #   ptd1 %]
    $stash->{'GCC'}{'purp'} = '962845771869775908'; #   purp1 %]
    $stash->{'GCC'}{'real_type'} = '10288085895679626787'; #   real_type1 %]
    $stash->{'GCC'}{'record_type'} = '1758540206415387803'; #   record_type1 %]
    $stash->{'GCC'}{'refd'} = '8849900715048830613'; #   refd1 %]
    $stash->{'GCC'}{'reference_type'} = '16697633896953867863'; #   reference_type1 %]
    $stash->{'GCC'}{'register'} = '16877293320150568600'; #   register1 %]
    $stash->{'GCC'}{'restrict'} = '3903514625756584958'; #   restrict1 %]
    $stash->{'GCC'}{'result_decl'} = '11770847430960199983'; #   result_decl1 %]
    $stash->{'GCC'}{'retn'} = '13614282426783395167'; #   retn1 %]
    $stash->{'GCC'}{'return_stmt'} = '9756450362179887509'; #   return_stmt1 %]
    $stash->{'GCC'}{'scope_stmt'} = '3215595972638573219'; #   scope_stmt1 %]
    $stash->{'GCC'}{'scpe'} = '4945019676192940818'; #   scpe1 %]
    $stash->{'GCC'}{'size'} = '622775621232078412'; #   size1 %]
    $stash->{'GCC'}{'static'} = '17274033063355497333'; #   static1 %]
    $stash->{'GCC'}{'strg'} = '13211383975432006576'; #   strg1 %]
    $stash->{'GCC'}{'struct'} = '15399083736735844201'; #   struct1 %]
    $stash->{'GCC'}{'then'} = '18335977621501565784'; #   then1 %]
    $stash->{'GCC'}{'tree_code_ref'} = '9656206768310202721'; #   tree-code-ref1 %]
    $stash->{'GCC'}{'tree_list'} = '11955769873204335371'; #   tree_list1 %]
    $stash->{'GCC'}{'truth_andif_expr'} = '13753140270826017837'; #   truth_andif_expr1 %]
    $stash->{'GCC'}{'truth_orif_expr'} = '18062770073225637637'; #   truth_orif_expr1 %]
    $stash->{'GCC'}{'type'} = '8487368510822806361'; #   type1 %]
    $stash->{'GCC'}{'type_decl'} = '15015140325254999524'; #   type_decl1 %]
    $stash->{'GCC'}{'undefined'} = '10915430546908712813'; #   undefined1 %]
    $stash->{'GCC'}{'union'} = '12225112028119082005'; #   union1 %]
    $stash->{'GCC'}{'union_type'} = '1644233858315978739'; #   union_type1 %]
    $stash->{'GCC'}{'unql'} = '10566808590568954355'; #   unql1 %]
    $stash->{'GCC'}{'unsigned'} = '5405717144031607034'; #   unsigned1 %]
    $stash->{'GCC'}{'used'} = '10038856983008992957'; #   used1 %]
    $stash->{'GCC'}{'valu'} = '3018755155234083761'; #   valu1 %]
    $stash->{'GCC'}{'var_decl'} = '6210944617293730303'; #   var_decl1 %]
    $stash->{'GCC'}{'void_type'} = '9634342635882568798'; #   void_type1 %]
    $stash->{'GCC'}{'while_stmt'} = '16103405441176336031'; #   while_stmt1 %]

    foreach my $s qw(RDFS OWL GCC)
    {
	foreach my $k (keys %{$stash->{$s}})
	{
	    $stash->{'GCC_REV'}{$stash->{$s}{$k}}=$k;
	}
    }
    foreach my $s qw(RDF)
    {
	foreach my $k (keys %{$stash->{$s}})
	{
	    # quote the rdf_type key so it does not get confused
	    $stash->{'GCC_REV'}{$stash->{ $s }{"rdf_" . $k}}=$k;
	}
    }

    bless ($stash->{'GCC_REV'},"Gcc::Structure");
    $g_stash =$stash->{'GCC_REV'}; # save a pointer
}

sub GetRev
{
    my $value=shift;
    warn "getrev $value \n";

    if (!$g_stash)
    {
	warn "creating the stash";
	CreateStash(\%ownstash);

    }
#    warn Dumper($g_stash);
    {
	my $val = $g_stash->{$value}; # this is over a variable that is  global.
	if (!$val)
	{
	    return "UNKNOWN_URI";
	}
	return $val;
    }
    
}


# [% #2676358461911161944 http://introspector.sf.net/2003/08/16/introspector.owl#ptd %]
# [% #10566808590568954355 http://introspector.sf.net/2003/08/16/introspector.owl#unql %]
# [% #2982895206037061277 http://www.w3.org/1999/02/22-rdf-syntax-ns#type %]
# [% #3018755155234083761 http://introspector.sf.net/2003/08/16/introspector.owl#valu  %]
# [% #4114558830764260770 http://introspector.sf.net/2003/08/16/introspector.owl#chan  %]


# [% ## backtrace %]
# [% # 13628382504237426965 http://introspector.sf.net/2003/08/16/introspector.owl#prms  parameter relationship for types%]
# [% #17865787076711148416 http://introspector.sf.net/2003/08/16/introspector.owl#fn %]
# [% #11219945973304477103 http://introspector.sf.net/2003/08/16/introspector.owl#op_1 %]
# [% #15606565242626538736 http://introspector.sf.net/2003/08/16/introspector.owl#expr %]
# [% #14237244523238252727 http://introspector.sf.net/2003/08/16/introspector.owl#next %]
# [% #14920123564075139560 http://introspector.sf.net/2003/08/16/introspector.owl#body %]
# [% #14920123564075139560 http://introspector.sf.net/2003/08/16/introspector.owl#body %]


# [% #alternate: 1683516950493154650 http://introspector.sf.net/2003/08/16/introspector.owl#args   arguments declared! %]

1;
