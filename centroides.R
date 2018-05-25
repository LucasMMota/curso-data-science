
#centroids kmeans
dados = read.csv(file.choose(),sep=',',header=T)
cluster = kmeans(dados[2:5],centers=3)
cluster$centers


#agrupamento
dados = read.csv(file.choose(),sep=',',header=T)
summary(dados)
cluster = kmeans(dados,centers=3)
cluster$cluster

#clasificacao
dados3 = read.csv(file.choose(),sep=',',header=T)
head(dados3)
dim(dados3)

amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))
amostra

dados3treino = dados3[amostra==1,]
dados3teste = dados3[amostra==2,]

dim(dados3treino)
head(dados3treino)

modelo <- naiveBayes(class ~., as.matrix(dados3treino))
predicao <- predict(modelo, dados3teste)

predicao
confusao = table(creditoteste$class,predicao)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaerro = (confusao[2] + confusao[3]) / sum(confusao)


