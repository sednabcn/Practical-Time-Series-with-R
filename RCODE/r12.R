rm(list=ls(all=TRUE))
rain.data <-scan("http://robjhyndman.com/tsdldata/hurst/precip1.dat",skip=1)
rain.ts <- ts(rain.data, start=c(1813))
par( mfrow=c(1,2) )
hist(rain.data, main="Annual London Rainfall 1813-1912",
     xlab="rainfall in inches")
qqnorm(rain.data,main="Normal Plot of London Rainfall")
qqline(rain.data)
par( mfrow=c(2,1) )
plot.ts(rain.ts, main="Annual London Rainfall 1813-1912",
        xlab="year", ylab="rainfall in inches")
acf(rain.ts, main="ACF: London Rainfall")
library(forecast)
auto.arima(rain.ts)
Series: rain.ts
ARIMA(0,0,0) with non-zero mean
Coefficients:
  mean
24.8239
s.e. 0.4193
sigma^2 estimated as 17.76: log likelihood=-285.25
AIC=574.49 AICc=574.61 BIC=579.7