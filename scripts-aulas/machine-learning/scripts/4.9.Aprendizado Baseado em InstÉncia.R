#Formacao Cientista de Dados - Fernando Amaral

install.packages("class", dependencies=T)
library(class)

head(iris)
summary(iris)
dim(iris)

amostra = sample(2,150,replace=T, prob=c(0.7,0.3))
iristreino = iris[amostra==1,]
classificar = iris[amostra==2,]

dim(iristreino)
dim(classificar)

#                 nao usa a classe [1:4]        classe na col 5   3 centroids
previsao = knn(iristreino[,1:4],classificar[,1:4],iristreino[,5],k=3)
table = table(classificar[,5],previsao) ## classificacao pelo vizinho mais proximo

(table[1] + table[5] + table[9]) / sum(table) 

