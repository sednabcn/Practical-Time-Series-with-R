par(mar=c(1,1,1,1))
rm(list=ls(all=TRUE))
set.seed(500) # Beginning of Heptarchy: Kent, Essex, Sussex,
# Wessex, East Anglia, Mercia, and Northumbria.
data = arima.sim( list(order = c(1,0,1), ar =.7, ma=.2), n = 1000000)
par(mfcol = c(3,1 ))
plot(data, main="ARMA(1,1) Time Series: phi1=.7, theta1=.2", xlim=c(0,400)) #first terms
acf(data, main="Autocorrelation of ARMA(1,1), phi1=.7, theta1=.2")
acf(data, type="partial", main="Partial Autocorrelation of ARMA(1,1), phi1=.7, theta1=.2")