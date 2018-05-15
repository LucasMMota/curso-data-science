#Formacao Cientista de Dados - Fernando Amaral

install.packages('randomForest',dependencies=T)
library(randomForest)
credito = read.csv(file.choose(),sep=',',header=T)
head(credito)

amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]

#                                                   num de arvores
floresta = randomForest(class ~ .,data=creditotreino, ntree=100,importance=T)

varImpPlot(floresta) #

previsao = predict(floresta,creditoteste)
plot(previsao)
confusao = table(previsao,creditoteste$class)
confusao
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaerro = (confusao[2] + confusao[3]) / sum(confusao)


