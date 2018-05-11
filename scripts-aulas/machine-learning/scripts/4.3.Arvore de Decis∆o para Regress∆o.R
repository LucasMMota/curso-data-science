#Formacao Cientista de Dados - Fernando Amaral

#Naive Bayes e1071 klaR
#install.packages("e1071", dependencies = T)
#library("e1071")

#dados de credito
credito = read.csv(file.choose(),sep=',',header=T)
dim(credito)

#divir o conjunto de dados em 70 30
#amostra de 1 e 2, com mil posicoes, com reposição (T), com probabilidade 0.7 pra gerar 1 e 0.3 pra gerar 2
amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))

creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]

dim(creditotreino)
dim(creditoteste)

modelo = naiveBayes(class ~ . ,creditotreino )  # a influencia da probabilidade na classe ocorreu de maneira independente pra cada atributo
class(modelo)

predicao = predict(modelo, creditoteste)
confusao = table(creditoteste$class, predicao) #matriz de confusão

taxadeacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxadeerro   = (confusao[2] + confusao[3]) / sum(confusao)

#previsao de novo credito
novocredito = read.csv(file.choose(),sep=',',header=T)
novocredito
dim(novocredito)

predict(modelo, novocredito)
####

modelo = rpart(Sepal.Length ~ Sepal.Width + Petal.Length +  Petal.Width + Species ,data=iris)
modelo

predicao = predict(modelo, iris)
head(predicao)

comparacao = cbind(predicao,iris$Sepal.Length,predicao - iris$Sepal.Length )
head(comparacao)
