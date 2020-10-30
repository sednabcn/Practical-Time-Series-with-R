par(mfrow=c(2,1))

phi1 = .4; phi2 = .3;
X.ts <- arima.sim(list(ar = c(phi1, phi2)), n=1000)
plot(X.ts,main=paste("AR(2) Time Series, phi1=",phi1,"phi2=",phi2))
acf(X.ts,main="ACF")
