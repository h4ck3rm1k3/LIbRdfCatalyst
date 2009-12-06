#use Gcc::Structure;
sub CheckObjectFile
{
    my $val =shift;
    my $temp= "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/jquery/";
    my $template_name=  $temp . "object/${val}.tt";
    if (! -f $template_name )
    {
	warn "creating $val";
	open OUT,">$template_name";
	print OUT q{//json body of object : };
	close OUT;
    }
    return $val;
}
$stash->set("template_name_tid" =>  CheckObjectFile(Gcc::Structure::GetRev($stash->get("TID")) ));
$stash->set("template_name_pid" =>  CheckObjectFile(Gcc::Structure::GetRev($stash->get("PID")) ));
my $id = Gcc::Structure::GetRev($stash->get("TID"));
my $val = CheckObjectFile($id);
$stash->set("template_name_tid" =>  $val );

$id = Gcc::Structure::GetRev($stash->get("PID"));
$val = CheckObjectFile($id);
$stash->set("template_name_pid" =>  $val );


#### ICON 
##create an default icon if there is none.
my $temp= "/media/sdd2/home/mdupont/2009/11/FirefoxMechanize/gui/LibRdf/RedLandMySql/root/";
my $template_name=  $temp . "/static/icons/${val}.svg";
my $png=  $temp . "/static/icons/${val}.png";
if (! -f $template_name )
{
    warn "creating $val";
    use File::Copy;
    copy($temp . "/static/icons/type.svg",$template_name);
    system("inkscape  $template_name --export-png=$png --export-width=16 --export-height=16 --without-gui ");
}

