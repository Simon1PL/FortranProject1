unset grid
set terminal pdf
set output 'wykres8.pdf'
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

plot "res8naive" title "naive"
replot "res8better" title "better"
replot "res8dot" title "dot"
replot "res8matmul" title "matmul"

unset multi