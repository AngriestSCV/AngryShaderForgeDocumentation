#!/usr/bin/gnuplot

set term png lw 2.5

set grid

set xlabel "Factor"
set ylabel "Output"
set zeroaxis
set key off

set obj 1 rectangle behind from 0,-1000 to 1,1000
set obj 1 fillstyle solid 1.0 fillcolor rgbcolor "green" 

set output "lerp-0-to-1.png"
set xrange [-1:2]
#set yrange [-2:2]
plot x  lw 2 lt rgb "blue"

set xrange [-1:2]
set output "lerp-3-to-1.png"
plot 3+-x*2  lw 2 lt rgb "blue"


