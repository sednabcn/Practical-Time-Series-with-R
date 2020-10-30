rm( list=ls( all = TRUE ) )
par(mfrow=c(3,1))
phi.1 = .6;
phi.2 = .2; 
data.ts = arima.sim(n = 500, list(ar = c(phi.1, phi.2)));
par(mar=c(1,1,1,1))
plot(data.ts, main=
       paste("Autoregressive Process with phi1=",phi.1," phi2=",phi.2) );
acf(data.ts, main="Autocorrelation Function");
acf(data.ts, type="partial", main="Partial Autocorrelation Function");

