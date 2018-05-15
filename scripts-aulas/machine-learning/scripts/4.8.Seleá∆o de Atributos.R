#Formacao Cientista de Dados - Fernando Amaral
library("e1071")

credito = read.csv(file.choose(),sep=',',header=T)
amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]

#suport vector machine
modelo <- svm(class ~., creditotreino)
  
predicao <- predict(modelo,creditoteste)
confusao = table(creditoteste$class,predicao)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto

install.packages("FSelector", dependencies=T)
library("FSelector")

#vericando atributos relevantes
random.forest.importance(class ~ .,credito) #seleciona os atributos mais relevantes

modelo = svm(class ~ checking_status + duration + credit_history + credit_amount  ,creditotreino)
predicao = predict(modelo,creditoteste)
confusao = table(creditoteste$class,predicao)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaerro = (confusao[2] + confusao[3]) / sum(confusao)
taxaacerto


chi.squared(Classe~.,matriculas)
information.gain(Classe~.,matriculas)

checking_status