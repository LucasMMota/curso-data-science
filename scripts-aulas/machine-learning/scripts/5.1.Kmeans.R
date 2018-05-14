#Formacao Cientista de Dados - Fernando Amaral

dim(iris)
summary(iris)

#cols de 1 a 4 (sem a classe)
cluster = kmeans(iris[1:4],centers=3)
cluster$cluster
confusao = table(iris$Species,cluster$cluster)

taxaacerto = (confusao[1] + confusao[5]+ confusao[9]) / sum(confusao)
taxaerro = (confusao[2] + confusao[3]+confusao[4]+confusao[6]+confusao[7]+confusao[8]) / sum(confusao)

plot(iris[,1:4],col=cluster$cluster)


set.seed(2014)
cluster = kmeans(iris[1:4],centers=3)
table(iris$Species,cluster$cluster)
plot(iris[,1:4],col=cluster$cluster)