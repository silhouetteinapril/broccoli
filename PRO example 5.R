############################################
# this code is created for PRO example 5.5.1
# author: jiawen
# created date: 20190430
# latest update date: 20190430
############################################
library(Rdonlp2)
p = c(1, 1, 1, 1, 1, 1, 1, 1)           
par.l = c(0, 0, 0, 0, 0, 0, 0, 0); par.u = c(+Inf, 1000, 1000, 1000, 1000, 1000, 1000, 1000) 
fn = function(x){
        -x[1]*(x[2] + x[3] + x[4] + x[5] + x[6] + x[7] + x[8])
}                 
A=matrix(c(62,1,0,0,0,0,0,0, 50,0,1,0,0,0,0,0, 40,0,0,1,0,0,0,0, 42,0,0,0,1,0,0,0, 52.6,0,0,0,0,1,0,0, 55.6,0,0,0,0,0,1,0, 60,0,0,0,0,0,0,1), 7, byrow = TRUE)
lin.l = c(0, 0, 0, 0, 0, 0, 0); lin.u = c(3100, 1500, 1400, 1510, 2000, 2500, 3300)  
donlp2(p,fn,par.u,par.l,A,lin.l=lin.l,lin.u=lin.u)

# output result
# $par
# [1]   25.48754 1000.00000  225.62297  380.49837  439.52329  659.35536 1000.00000  1000.00000
# i.e. price = 25.48754, attendance of Sunday, Monday...Saturday are 1000, 225, 380, 439, 659, 1000, 1000, respectively.