#Formacao Cientista de Dados - Fernando Amaral

eleicao = read.csv(file.choose(),sep=';',header=T)
plot(eleicao$DESPESAS,eleicao$SITUACAO) 
summary(eleicao)

cor(eleicao$DESPESAS,eleicao$SITUACAO)

#lm cria regressao linear simples ou multipla
#glm criar diversos tipos de regressao
modelo = glm(SITUACAO~DESPESAS,data=eleicao,family="binomial") 
summary(modelo)

plot(eleicao$DESPESAS,eleicao$SITUACAO,col='red',pch=20)
points(eleicao$DESPESAS, modelo$fitted, pch=4) 

#com o modelo, prever novos candidatos
prevereleicao = read.csv(file.choose(),sep=';',header=T)
prevereleicao$RESULT = predict(modelo,newdata=prevereleicao,type="response") 
prevereleicao$RESULT
#fix(prevereleicao)
predict(modelo, as.data.frame(DESPESAS = 1000))
