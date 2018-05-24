#Formacao Cientista de Dados - Fernando Amaral
install.packages("wordcloud")
library(tm)
library(SnowballC)

getSources()#exibe as fontes de dados poss??veis
#pcorpus persistente
#vcorpus vol??til
x = "/Users/lucas/Documents/curso-data-science/aulas/08_Minera\303\247\303\243o_de_Texto/Arquivos/"
corpus = VCorpus(DirSource(x, encoding = "UTF-8"),readerControl = list(reader=readPlain,language = "eng"))

inspect(corpus) 
inspect(corpus[1:100])  

meta(corpus[[1]])  #metadados dos corpus
inspect(corpus[[2]])  
as.character(corpus[[2]]) 
as.character(corpus[[2]])[1] 

stopwords("portuguese")

corpus = tm_map(corpus, removeWords, stopwords("english"))
corpus = tm_map(corpus , stripWhitespace)

corpus  <- tm_map(corpus , removePunctuation)
corpus  <- tm_map(corpus , removeNumbers)

corpus = tm_map(corpus, stemDocument,language = "english")
corpus = tm_map(corpus, stemCompletion, dictionary=corpus)

library(wordcloud)
wordcloud(corpus,max.words=100,random.order=T,colors=rainbow(8),rot.per=0.5,use.r.layout=T)

freq <- TermDocumentMatrix(corpus)
matriz <- as.matrix(freq)
matriz <- sort(rowSums(matriz),decreasing=TRUE)
matriz = data.frame(word=names(matriz), freq=matriz)
head(matriz, n=100)

wordcloud(matriz,max.words=100,random.order=T,colors=rainbow(8),rot.per=0.5,use.r.layout=T)

findFreqTerms(freq,500,Inf)

removeSparseTerms(freq, 0.4)













