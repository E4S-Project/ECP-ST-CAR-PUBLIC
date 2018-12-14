set terminal pdfcairo transparent enhanced fontscale .6 size 5.00in, 3.00in
set output "cc_abcd.pdf"
unset clip points
set clip one
unset clip two
set errorbars front 1.000000 
set border 31 front lt black linewidth 1.000 dashtype solid
set zdata 
set ydata 
set xdata 
set y2data 
set x2data 
set boxwidth
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02 
set style ellipse size graph 0.05, 0.03 angle 0 units xy
set dummy x, y
set format x "% h" 
set format y "% h" 
set format x2 "% h" 
set format y2 "% h" 
set format z "% h" 
set format cb "% h" 
set format r "% h" 
set ttics format "% h"
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
set grid nopolar
set grid xtics nomxtics ytics nomytics noztics nomztics nortics nomrtics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linecolor 0 linewidth 0.500,  lt 0 linecolor 0 linewidth 0.500
unset raxis
set theta counterclockwise right
set style parallel front  lt black linewidth 2.000 dashtype solid
set key title "" center
set key fixed left top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
set key noopaque
unset label
unset arrow
set style increment default
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
#set object  1 rect from 3,0 to 500,2500
#set object  1 behind clip lw 0.0  dashtype solid fc  rgb "#ff9c95"  fillstyle   solid 1.00 border lt -1
#set object  2 rect from 500,0 to 1000,2500
#set object  2 behind clip lw 0.0  dashtype solid fc  rgb "#ffc574"  fillstyle   solid 1.00 border lt -1
#set object  3 rect from 402,0 to 801,6000
#set object  3 behind clip lw 0.0  dashtype solid fc  rgb "#ffea30"  fillstyle   solid 1.00 border lt -1
#set object  4 rect from 801,0 to 1200,6000
#set object  4 behind clip lw 0.0  dashtype solid fc  rgb "#91ffa5"  fillstyle   solid 1.00 border lt -1
set style textbox transparent margins  1.0,  1.0 border  lt -1 linewidth  1.0
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset decimalsign
unset micro
unset minussign
set view 60, 30, 1, 1
set view azimuth 0
set rgbmax 255
set samples 100, 100
set isosamples 10, 10
set surface 
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set nomttics
set xtics border in scale 1,0.5 mirror norotate  autojustify
#set xtics  norangelimit logscale

# 1 2 4 8 16 
set xtics  ("1" 1 , "2" 2, "4" 4, "8" 8, "12" 12, "16" 16)
set xtics rotate by 45 right
#set ytics  ("1000" 1000, "2000" 2000, "4000" 4000, "8000" 8000, "16000" 16000, "32000" 32000)
set ytics border in scale 1,0.5 mirror norotate  autojustify
#set ytics norangelimit logscale
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
#unset x2tics
#set y2tics border in scale 1,0.5 nomirror norotate  autojustify
#set y2tics  norangelimit 
#set y2tics   (0.00000, 16.6600, 33.3300, 50.0000, 66.6600, 83.3200, 100.000)
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset ttics

#set title "Strong Scaling of the Coupled-Cluster ABCD Term."
set title  font "" norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" norotate
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "# of Nodes (2 x E5-2680v4 + 2 P100 / node)"
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ 0.9 : 16.5 ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "Performance, GFlop/s" 
set ylabel  font "" textcolor lt -1 rotate
#set y2label "Percentage of data transferred" 
#set y2label  font "" textcolor lt -1 rotate
set yrange [ 1000 : 38000 ] noreverse nowriteback
#set y2range [ 0.00000 : 100.000 ] noreverse nowriteback
set zlabel "" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse nowriteback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate
set cbrange [ * : * ] noreverse nowriteback
set rlabel "" 
set rlabel  font "" textcolor lt -1 norotate
set rrange [ * : * ] noreverse nowriteback
unset logscale
#set logscale x 10
#set logscale y 10
unset jitter
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "en_US.UTF-8"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set pm3d nolighting
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set loadpath 
set fontpath 
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "aqua"

set linetype  1 linecolor rgb "dark-violet" dashtype 1 lw 2
set linetype 11 linecolor rgb "dark-violet" dashtype 2 lw 2
set linetype  2 linecolor rgb "#009e73" dashtype 1 lw 2
set linetype 12 linecolor rgb "#009e73" dashtype 2 lw 2
set linetype  3 linecolor rgb "#56b4e9" dashtype 1 lw 2
set linetype 13 linecolor rgb "#56b4e9" dashtype 2 lw 2
set linetype  4 linecolor rgb "#e69f00" dashtype 1 lw 2
set linetype 15 linecolor rgb "#e69f00" dashtype 2 lw 2
set linetype  5 linecolor rgb "#f0e443" dashtype 2 lw 2
set linetype 15 linecolor rgb "#f0e443" dashtype 2 lw 2

plot \
"<awk -F, '{ if ($1 == \"TESSE\" && $3 == 2) {print $2, $4;} }' cc_abcd.csv" w lines t "" lt 1, \
"<awk -F, '{ if ($1 == \"TESSE\" && $3 == 2) {print $2, $4, $5, $6;} }' cc_abcd.csv" w yerrorbars t "MPQC w/ PaRSEC, 2xP100" lt 1, \
"<awk -F, '{ if ($1 == \"TESSE\" && $3 == 1) {print $2, $4;} }' cc_abcd.csv" w lines t "" lt 2, \
"<awk -F, '{ if ($1 == \"TESSE\" && $3 == 1) {print $2, $4, $5, $6;} }' cc_abcd.csv" w yerrorbars t "MPQC w/ PaRSEC, 1xP100" lt 2, \
"<awk -F, '{ if ($1 == \"TA\" && $3 == 1) {print $2, $4;} }' cc_abcd.csv" w lines t "" lt 12, \
"<awk -F, '{ if ($1 == \"TA\" && $3 == 1) {print $2, $4, $5, $6;} }' cc_abcd.csv" w yerrorbars t "Native MPQC, 1xP100" lt 12

#    EOF
