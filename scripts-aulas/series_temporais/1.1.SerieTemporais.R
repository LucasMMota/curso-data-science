#Formacao Cientista de Dados - Fernando Amaral

AirPassengers
start(AirPassengers)#data de inicio da serie
end(AirPassengers)#data de fim da serie
frequency(AirPassengers)

plot(AirPassengers)
plot(aggregate(AirPassengers)) #agregate: agrega por ano (X)
monthplot(AirPassengers)

subst = window(AirPassengers,start=c(1960,1), end=c(1960,12))#window: extrai de uma janela de tempo
subst
plot(subst)#agora vejo o ano mais detalhado

#decomposição em trend, sasonalidade, random...
dec = decompose(AirPassengers)
dec

attributes(dec)
dec$seasonal

plot(dec$trend)
plot(dec)

#
mean(AirPassengers)
window(AirPassengers,start=c(1960,1), end=c(1960,12))
mean(window(AirPassengers,start=c(1960,1), end=c(1960,12)))

install.packages("forecast")
library(forecast)

mediamovel = ma(AirPassengers,order=12) #media movel

previsao = forecast(mediamovel, h=12)
plot(previsao)

arima = auto.arima(AirPassengers)
arima

previsao = forecast(arima, h=5)
plot(previsao)



