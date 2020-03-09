#PUVSPR
fill<- read.csv('new.csv', header =TRUE, sep=',')

long.id<-reshape(fill, idvar = "id", varying = names(fill)[2:6], v.names = "amount", direction = "long")
names(long.id)<- c('id', 'species', 'amount')
long.id<- long.id[c(2,1,3)]
puvspr<- subset(long.id, amount!=0)
puvspr<- arrange(puvspr, id)
puvspr<- round(puvspr, digits = 3)
write.csv(puvspr, "C:/Users/Asus/SUDOE/St.Miquel/Marxan/INPUT/puvspr.csv", row.names = FALSE)

aa