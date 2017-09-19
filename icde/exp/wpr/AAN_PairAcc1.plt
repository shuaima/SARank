#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 16
set output "AAN_PairAcc1.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [2006:2011]
set yr [0.4:0.95]  
set ytics ("0.40" 0.4, "0.51" 0.51, "0.62" 0.62, "0.73" 0.73, "0.84" 0.84, "0.95" 0.95)
set xtics ("2005" 2005, "2006" 2006, "2007" 2007, "2008" 2008, "2009" 2009, "2010" 2010) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1.5
set xlabel "splitting year" offset 0,0.5

set key horizontal samplen 1.8 spacing 1.2 at graph 0.97, 0.4
#set key horizontal font ",13" 
plot "AAN_PairAcc1.tab" using ($1):($4) title 'HRank' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"AAN_PairAcc1.tab" using ($1):($3) title 'FRank' with linespoints linetype 1 pointtype 2 lc rgb "#228B22" lw 3,\
"AAN_PairAcc1.tab" using ($1):($2) title 'PRank' with linespoints linetype 1 pointtype 1 lc 1 lw 3,\
"AAN_PairAcc1.tab" using ($1):($5) title 'SARank' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"AAN_PairAcc1.tab" using ($1):($6) title 'WPR' with linespoints linetype 1 pointtype 8 lc 4 lw 3

