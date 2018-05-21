#Formacao Cientista de Dados - Fernando Amaral
install.packages("igraphdata")
library(igraphdata)
data(Koenigsberg)
Koenigsberg
plot(Koenigsberg)
 
degree(Koenigsberg, mode="all")

data(kite)
plot(kite)

data(UKfaculty)
UKfaculty
plot(UKfaculty)
comun=cluster_edge_betweenness(UKfaculty)
plot(comun,UKfaculty)


