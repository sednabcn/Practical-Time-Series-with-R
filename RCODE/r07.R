list(order = c(2,0,0), ar =c( 0.7, -.2))
rm(list=ls(all=TRUE))
set.seed(43) #Roman conquest of Britain
data = arima.sim( list(order = c(2,0,0), ar =c( 0.7, -.2)), n = 2000)
#Now plot our ACF and PACF (you can plot the time series data itself as well):
par(mfrow=c(1,2))
acf(data, main="ACF of AR Data of Second Order")
acf(data, type="partial", main="PACF of Time Series")
SSE=NULL
AIC=NULL
for (p in 1:5) {
  m = arima(data, order=c(p,0,0), include.mean=FALSE )
  SSE[p] = sum(resid(m)^2)
  AIC[p] = m$aic
  print( m$coef )
  print( paste(m$aic, sum(resid(m)^2)) )
}