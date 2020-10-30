n=10000
sigma=4
phi<-c(1/3,1/2,7/100)
set.seed(2017)
p=3
ar.process=arima.sim(n,model=list(ar=c(1/3,1/2,7/100)),sd=4)
ar.process[1:5]
par(mar=c(1,1,1,1))
for(i in 1:p+1){
  r[i-1]<-acf(ar.process, plot=F)$acf[i]
}
#r<-acf(ar.process, plot=F)$acf[2:4]
R=matrix(1,p,p) # matrix of dimension 3 by 3, with entries all 1's.
for(i in 1:p+1){for (j in 1:p+1) 
{ R[i,j]=r[ abs(i-j)]}
  }
#R[1,2:3]=r[1:2] # only diagonal entries are edited
#R[2,1]=r[1]# only diagonal entries are edited
#R[2,3]=r[1]
#R[3,1:2]=rev(r[1:2])
b=matrix(r,p,1)# b- column vector entires from r
phi.sol<-solve(R,b)
phi.hat=matrix(c(phi.sol),p,1)
c0= acf(ar.process, type='covariance', plot=F)$acf[1]
var.hat= c0*(1-sum(phi.hat*r))
par(mfrow=c(3,1))
plot(ar.process, main='Simulated AR(3)')
acf(ar.process, main='ACF')
pacf(ar.process, main='PACF')

phi.hat
var.hat
