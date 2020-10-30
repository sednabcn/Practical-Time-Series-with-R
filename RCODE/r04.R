n=10000
sigma=4
phi[1:2]=c(1/3,1/2)
set.seed(2017)
ar.process=arima.sim(n,model=list(ar=c(1/3,1/2)),sd=4)
ar.process[1:5]