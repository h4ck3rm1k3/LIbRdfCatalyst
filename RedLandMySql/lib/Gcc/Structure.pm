

package Gcc::Structure;

# document the structure of the compiler.
# include all uris 

#use Const valu_uri => 'http://introspector.sf.net/2003/08/16/introspector.owl#valu';
use constant  _OWL_ObjectProperty  => 1873043916455325203; #   http://www.w3.org/2002/07/owl; # ObjectProperty1
use constant  _RDFS_Class  => 712532928204075599; #   http://www.w3.org/2000/01/rdf-schema; # Class1
use constant  _RDFS_Property  => 6673891668991303979; #   http://www.w3.org/2000/01/rdf-schema; # Property1
use constant  _RDFS_domain  => 2239939339862288424; #   http://www.w3.org/2000/01/rdf-schema; # domain1
use constant  _RDFS_range  => 11915351292288268195; #   http://www.w3.org/2000/01/rdf-schema; # range1
use constant  _RDF_InstanceOf  => 10270753249587741076; #   http://www.w3.org/1999/02/22-rdf-syntax-ns; # InstanceOf1
use constant  _RDF_type  => 2982895206037061277; #   http://www.w3.org/1999/02/22-rdf-syntax-ns; # type1


use constant  _addr_expr  => 15121694316464009706 ; #   addr_expr1
use constant  _algn  => 3463699419612294594; #   algn1
use constant  _args  => 1683516950493154650; #   args1
use constant  _argt  => 2769146704446691071; #   argt1
use constant  _array_type  => 16617296641316102187; #   array_type1
use constant  _begn  => 17430755394955437515; #   begn1
use constant  _bit_and_expr  => 12746686297674055027; #   bit_and_expr1
use constant  _bitfield  => 6394446829195596513; #   bitfield1
use constant  _body  => 14920123564075139560; #   body1
use constant  _boolean_type  => 8498487305451770129; #   boolean_type1
use constant  _booleantrue  => 9081279205792424080; #   booleantrue1
use constant  _bpos  => 12558489283916986310; #   bpos1
use constant  _break_stmt  => 729518676726590216; #   break_stmt1
use constant  _call_expr  => 16555969483281980006; #   call_expr1
use constant  _chan  => 4114558830764260770; #   chan1
use constant  _clnp  => 3970355797750291277; #   clnp1
use constant  _cnst  => 15447793508881526429; #   cnst1
use constant  _complex_type  => 12496493282471841459; #   complex_type1
use constant  _component_ref  => 6352341228442777724; #   component_ref1
use constant  _compound_stmt  => 1649590370193169021; #   compound_stmt1
use constant  _cond  => 6882056378800589090; #   cond1
use constant  _cond_expr  => 6597742586517559588; #   cond_expr1
use constant  _const => 5658572693438032439; #   const1
use constant  _const_decl  => 16663890274115130369; #   const_decl1
use constant  _convert_expr  => 10311625089581536808; #   convert_expr1
use constant  _csts  => 9561307719596337074; #   csts1
use constant  _decl  => 12796642252030655678; #   decl1
use constant  _decl_stmt  => 3903779982595783287; #   decl_stmt1
use constant  _domn  => 403638557824333524; #   domn1
use constant  _elts  => 17281589148047588546; #   elts1
use constant  _end  => 15602884528303547261; #   end1
use constant  _enumeral_type  => 471320701236103877; #   enumeral_type1
use constant  _eq_expr  => 1963347405158255895; #   eq_expr1
use constant  _expr  => 15606565242626538736; #   expr1
use constant  _expr_stmt  => 11672834489641252853; #   expr_stmt1
use constant  _extern  => 12077022596007410172; #   extern1
use constant  _field_decl  => 424697566371559633; #   field_decl1
use constant  _filename  => 7729150382704805785; #   filename1
use constant  _flds  => 9829818324014295513; #   flds1
use constant  _fn  => 17865787076711148416; #   fn1
use constant  _function_decl  => 1504926891300555131; #   function_decl1
use constant  _function_type  => 5630798902154618539; #   function_type1
use constant  _ge_expr  => 12791991289915383860; #   ge_expr1
use constant  _high  => 2550293406536336236; #   high1
use constant  _identifier_node  => 15884583910156211027; #   identifier_node1
use constant  _if_stmt  => 14508082844231316967; #   if_stmt1
use constant  _indirect_ref  => 845380059125177324; #   indirect_ref1
use constant  _init  => 1356438245042226467; #   init1
use constant  _integer_cst  => 10682726496861974171; #   integer_cst1
use constant  _integer_type  => 4381322092629321835; #   integer_type1

use constant  _line  => 13473669242639446765; #   line1
use constant  _linenumber  => 4809313179007064510; #   linenumber1

use constant  _lngt  => 4576204957388522175; #   lngt1
use constant  _low  => 10268554046076623705; #   low1
use constant  _max  => 13822447584558540343; #   max1
use constant  _min  => 3339521254004920991; #   min1
use constant  _mngl  => 6772646006182068100; #   mngl1
use constant  _modifier  => 7637172006827845605; #   modifier1
use constant  _modify_expr  => 3321072264965677912; #   modify_expr1
use constant  _name  => 12412387891609905159; #   name1
use constant  _ne_expr  => 16867087564573135677; #   ne_expr1
use constant  _next  => 14237244523238252727; #   next1
use constant  _non_lvalue_expr  => 15320099648413976456; #   non_lvalue_expr1
use constant  _nop_expr  => 5724551445906810068; #   nop_expr1
use constant  _null  => 4060978262885395696; #   null1
use constant  _op_0  => 691896544957244177; #   op_01
use constant  _op_1  => 11219945973304477103; #   op_11
use constant  _op_2  => 12256018751638057119; #   op_21
use constant  _parm_decl  => 7830676800468631921; #   parm_decl1
use constant  _plus_expr  => 6209264463792281744; #   plus_expr1
use constant  _pointer_type  => 8942746211297021590; #   pointer_type1
use constant  _postincrement_expr  => 1282843889357872837; #   postincrement_expr1
use constant  _prec  => 12159439825297578533; #   prec1
use constant  _preincrement_expr  => 5460905604010845200; #   preincrement_expr1
use constant  _prms  => 13628382504237426965; #   prms1
use constant  _ptd  => 2676358461911161944; #   ptd1
use constant  _ptd => 2676358461911161944;# http://introspector.sf.net/2003/08/16/introspector.owl#ptd %]
use constant  _purp  => 962845771869775908; #   purp1
use constant  _real_type  => 10288085895679626787; #   real_type1
use constant  _record_type  => 1758540206415387803; #   record_type1
use constant  _refd  => 8849900715048830613; #   refd1
use constant  _reference_type  => 16697633896953867863; #   reference_type1
use constant  _register  => 16877293320150568600; #   register1
use constant  _restrict  => 3903514625756584958; #   restrict1
use constant  _result_decl  => 11770847430960199983; #   result_decl1
use constant  _retn  => 13614282426783395167; #   retn1
use constant  _return_stmt  => 9756450362179887509; #   return_stmt1
use constant  _scope_stmt  => 3215595972638573219; #   scope_stmt1
use constant  _scpe  => 4945019676192940818; #   scpe1
use constant  _size  => 622775621232078412; #   size1
use constant  _static  => 17274033063355497333; #   static1
use constant  _strg  => 13211383975432006576; #   strg1
use constant  _struct  => 15399083736735844201; #   struct1
use constant  _then  => 18335977621501565784; #   then1
use constant  _tree_code_ref  => 9656206768310202721; #   tree-code-ref1
use constant  _tree_list  => 11955769873204335371; #   tree_list1
use constant  _truth_andif_expr  => 13753140270826017837; #   truth_andif_expr1
use constant  _truth_orif_expr  => 18062770073225637637; #   truth_orif_expr1
use constant  _type  => 8487368510822806361; #   type1
use constant  _type_decl  => 15015140325254999524; #   type_decl1
use constant  _undefined  => 10915430546908712813; #   undefined1
use constant  _union  => 12225112028119082005; #   union1
use constant  _union_type  => 1644233858315978739; #   union_type1
use constant  _unql  => 10566808590568954355; #   unql1
use constant  _unql => 10566808590568954355;# http://introspector.sf.net/2003/08/16/introspector.owl#unql %]
use constant  _unsigned  => 5405717144031607034; #   unsigned1
use constant  _used  => 10038856983008992957; #   used1
use constant  _valu  => 3018755155234083761; #   valu1
use constant  _valu_ => 3018755155234083761;
use constant  _var_decl  => 6210944617293730303; #   var_decl1
use constant  _void_type  => 9634342635882568798; #   void_type1
use constant  _while_stmt  => 16103405441176336031; #   while_stmt1


1;