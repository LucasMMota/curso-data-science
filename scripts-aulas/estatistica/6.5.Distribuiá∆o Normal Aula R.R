#Formacao Cientista de Dados - Fernando Amaral

#caixa com objetos
#media=8 dp=2  objeto< 6kg
pnorm(6,8,2) # retorna a probabilidade de tirar um objeto com peso menor que 6 kilos

#prob de tirar um obj com mais de 6 kilos
pnorm(6,8,2, lower.tail=F) # lower.tail faz com que retorne o inverso 1-pnorm()

#menos de 6kg ou mais de 10kg
#prob de 6kg   #prob de 10 (1-pnorm())
pnorm(6,8,2) + pnorm(10,8,2, lower.tail=F)

#qual a chance de se tirar um objeto que tenha menos de 10kg e mais de 8kg
#prob de 10 - prob de 8
pnorm(10,8,2) - pnorm(8,8,2, lower.tail=F) #
1 - ( pnorm(8,8,2) + pnorm(10,8,2, lower.tail=F))

x = rnorm(100) #gera 100 valores aleatórios
qqnorm(x) #plota os pontos
qqline(x) #linha de menor ajuste
shapiro.test(x) 
