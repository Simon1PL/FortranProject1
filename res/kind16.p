unset grid
set terminal pdf
set output 'wykres16.pdf'
set key box top left
set multi
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 14"
set style data lines
set termopt enhanced
set xlabel "N" font "Arial, 14"
set ylabel "multiplication time" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed

plot "res16naive" title "naive"
replot "res16better" title "better"
replot "res16dot" title "dot"
replot "res16matmul" title "matmul"

unset multi