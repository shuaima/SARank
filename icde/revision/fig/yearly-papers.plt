set terminal postscript portrait enhanced color "Times-Roman" 14
set output "yearly-papers.eps"
set size 0.7, 0.22
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xtic scale 0.5
set ytic scale 0.8
set xr [1995:2015]
#set xr [1999:2015]
set xtics ("1995" 1995, "1997" 1997, "1999" 1999, "2001" 2001, "2003" 2003, "2005" 2005, "2007" 2007, "2009" 2009, "2011" 2011, "2013" 2013, "2015" 2015) offset -0.6, -1.2 rotate by 45

set yr [0:100]
set ytics ("0" 0, "25" 25, "50" 50, "75" 75, "100" 100)
#set logscale y 3

#set ylabel "(log) # of yearly-references" offset 1.3
set ylabel "% of papers" offset 1.3
#set xlabel "year"
set key at graph 0.98, 0.45

#set label 1 "Data" at 2012.5,1.5 font "Times-Roman,15" rotate by 30 textcolor rgb "blue"
#set label 2 "Missing" at 2012.5,0.75 font "Times-Roman,15" rotate by 30 textcolor rgb "blue"

plot "yearly-papers.tab" using ($1):($4) title 'AAN' with linespoints linetype 1 pointtype 6 lc rgb '#d95319' lw 3,\
"yearly-papers.tab" using ($1):($3) title 'DBLP' with linespoints linetype 1 pointtype 4 lc rgb "#228B22"  lw 3,\
"yearly-papers.tab" using ($1):($2) title 'MAG' with linespoints linetype 1 pointtype 3 lc rgb '#7e2f8e' lw 3