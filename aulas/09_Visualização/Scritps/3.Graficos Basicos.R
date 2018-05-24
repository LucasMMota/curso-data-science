#Formaco Cientista de Dados - Fernando Amaral

hist( trees$Height   )
hist( trees$Height,  main="Arvores", ylab="Frequencia",xlab="Altura", col="blue")
hist( trees$Height,  main="Arvores", ylab="Frequencia",xlab="Altura", col="blue",
      density=20, breaks=20    )

densidade = density(trees$Height)
plot(densidade)

hist(trees$Height, main=NULL, xlab=NULL)
par(new=TRUE) # assim ao gerar o novo gr??fico na prox linha ele nao apaga o anterior
plot(densidade)

plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume, main="??rvores")
plot(trees$Girth, trees$Volume, ylab="Cirunfer??ncia", xlab="Volume", col="blue", main="??rvores")
plot(trees$Girth, trees$Volume, ylab="Cirunfer??ncia", xlab="Volume", col="blue", main="??rvores", pch=20)

plot(trees$Girth, trees$Volume, ylab="Cirunfer??ncia", xlab="Volume", col="blue", main="??rovres", pch=20, type="l")

plot(jitter(trees$Girth), trees$Volume, ylab="Cirunfer??ncia", xlab="Volume", col="blue", main="??rvores")

plot(CO2$conc, CO2$uptake,pch=20)
plot(CO2$conc, CO2$uptake,pch=20, col= CO2$Treatment)

legend("bottomright",legend=c("nonchilled","chilled"),cex=1, fill=c("black","red")) 

plot(trees)

split.screen(figs=c(2,2))

screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$ Height)
screen(3)
plot(trees$ Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all=TRUE)
