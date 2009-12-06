
for x in `ls *.svg | sed -e's;.svg;;g' | sort -u `; 
do echo $x;
#echo inkscape  $x.svg --export-png=$x.png --export-width=x6 --export-height=x6 --without-gui 
inkscape  $x.svg --export-png=${x}_32.png --export-width=32 --export-height=32 --without-gui  
inkscape  $x.svg --export-png=${x}_40.png --export-width=40 --export-height=40 --without-gui 
inkscape  $x.svg --export-png=${x}_64.png --export-width=64 --export-height=64 --without-gui 
inkscape  $x.svg --export-png=${x}_128.png --export-width=128 --export-height=128 --without-gui 
done;
