set terminal pdf enhanced
set output 'foo.pdf'

set xlabel "Program"
set ylabel "Frames Per Second"
set y2label "Power Consumption (W)"

set xtics 1
set ytics 2
set y2tics 20

set yrange [0:22]
set y2range [80:300]

set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"

set grid

c1 = "#CA413A"
c2 = "#5788F2"

plot "foo.dat" using 2:xtic(1) title 'FPS' lc rgb c1 axes x1y1, \
	"" using 3:xtic(1) title 'Power Consumption' lc rgb c2 axes x1y2
