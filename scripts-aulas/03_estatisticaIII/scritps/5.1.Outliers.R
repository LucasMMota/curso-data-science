#Formacao Cientista de Dados - Fernando Amaral

boxplot(iris$Sepal.Width)
#boxplot(iris$Sepal.Width, outline=false)
boxplot.stats(iris$Sepal.Width)$out

install.packages('outliers')
library(outliers)

outlier(iris$Sepal.Width) 
#outliers inferiores
outlier(iris$Sepal.Width, opposite=T)
