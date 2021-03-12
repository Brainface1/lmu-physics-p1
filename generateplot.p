set xlabel 'v^(-1) in mL^(-1)'
set ylabel 'f^2 in Hz^2'

set terminal png size 2048,2048
set fit errorvariables

# Bottle 1
f(x)=m*x+b
fit f(x) 'Bottle1.gen.txt' using (1/$1):($2**2):(2*$4*$2) via m,b
fmax(x)=(m+m_err)*x+b-b_err
fmin(x)=(m-m_err)*x+b+b_err

set output 'Bottle1.png'
plot 'Bottle1.gen.txt' using (1/$1):($2**2):($3/($1**2)):(2*$4*$2) with xyerrorbars, f(x), fmax(x), fmin(x)


# Bottle 2
f(x)=m*x+b
fit f(x) 'Bottle2.gen.txt' using (1/$1):($2**2):(2*$4*$2) via m,b
fmax(x)=(m+m_err)*x+b-b_err
fmin(x)=(m-m_err)*x+b+b_err

set output 'Bottle2.png'
plot 'Bottle2.gen.txt' using (1/$1):($2**2):($3/($1**2)):(2*$4*$2) with xyerrorbars, f(x), fmax(x), fmin(x)
