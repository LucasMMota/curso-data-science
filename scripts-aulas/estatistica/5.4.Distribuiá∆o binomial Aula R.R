#Formacao Cientista de Dados - Fernando Amaral
#dbinom(num de sucessos, tamanho/nexperimentos, probabilidade)
dbinom(3,5,0.5)

#4 sinais de 4 tempos, prob=0,1,2,3,4
dbinom(0,4,0.25)
dbinom(1,4,0.25)
dbinom(2,4,0.25)
dbinom(3,4,0.25)
dbinom(4,4,0.25)

#se os sinais fossem de 2 tempos
dbinom(4,4,0.5)

#calcula a prob cumulativa
pbinom(4,4,0.25) #=1

#prova 12 questoes; acertar 7 questoes; cada questão tem 4 alternativas
dbinom(7,12,0.25)