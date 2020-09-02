set terminal latex size 15cm, 6cm
set output "plot.tex"
set samples 1000
set title "Это заголовок"
set xlabel "Это ось $x$"
set ylabel "Это\\\\очень\\\\длинный\\\\заголовок\\\\оси $y$"
set label "Мартышка" at -5,5.5 right
set arrow from -5,5 to -1,3
set xtic -10,5,10
set xtics ("$-\\pi$" -pi,\
"$-\\frac{\\pi}{2}$" -pi/2,\
"0" 0,\
"$\\frac{\\pi}{2}$" pi/2,\
"$\\pi$" pi)
plot [-10:10] [-10:10] 3*exp(-x*x)+1 title "$3e^{-x^{2}}+1$" with lines
