#Formacao Cientista de Dados - Fernando Amaral

#conj de velocidade e distancia
dim(cars)
head(cars)
summary(cars)
#verifica a correlação entre as duas variáveis
cor(cars)

#cria um modelo para novas predicoes
#var independente é a speed e dist é a var exploratória
modelo = lm(speed ~ dist, data=cars)
modelo
plot(modelo)

plot(speed ~ dist, data=cars)
abline(modelo) # linha de referencia da previsao

#calculo manual
modelo$coefficients
modelo$coefficients[1] + modelo$coefficients[2] * 22

#previsao com fn
predict(modelo,data.frame(dist = 22))

summary(modelo)

modelo$coefficients

modelo$residuals
modelo$fitted.values #dados que o modelo usou pra criar a linha de melhor ajuste
plot(modelo$fitted.values, cars$dist)

#conj de veiculos e caracteristicas
#mpg consumo em galoes por milhas
#cyl 
mtcars
colnames(mtcars)
dim(mtcars)

cor(mtcars[1:4])
#disp podelagas cubicas do metro/cilindradas
modelo = lm(mpg ~ disp, data=mtcars)
modelo

summary(modelo)$r.squared 
summary(modelo)$adj.r.squared#coef de determinacao ajustado

plot(mpg ~ disp, data=mtcars)
abline(modelo)

predict(modelo,data.frame(disp = 200))

#hp cavalos
#cyl cilindros
modelo = lm(mpg ~ disp +  hp + cyl, data=mtcars)

# o r2 é maior
# isso significa que um numero de maior de variaveis de respostas são 
#explicadas pelas variaveis explanatórias
summary(modelo)$r.squared 
summary(modelo)$adj.r.squared # se ajusta ao num de vars exploratorias maior

#agora é necessário add valores para todas as variaveis exploratórias
predict(modelo,data.frame(disp = 200, hp=100, cyl=4))




