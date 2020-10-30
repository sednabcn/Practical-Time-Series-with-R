plot(discoveries,
     main = "Time Series of Number of Major Scientific Discoveries in a Year")
stripchart(discoveries, method = "stack", offset=.5, at=.15,pch=19,
           main="Number of Discoveries Dotplot",
           xlab="Number of Major Scientific Discoveries in a Year",
           ylab="Frequency")
par(mfcol = c(2,1 ))
acf(discoveries, main="ACF of Number of Major Scientific Discoveries in a Year")
acf(discoveries, type="partial", main="PACF of Number of Major Scientific Discoveries
in a Year")
library(forecast)
auto.arima(discoveries, d=0, approximation=FALSE)

auto.arima(discoveries,d=0,ic="aic",approximations=TRUE)