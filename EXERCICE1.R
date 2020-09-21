#exercice 1
#1
n<-10000
u<-runif(n)
#2

x<- 1 + (u>0.2) + (u>0.7) + (u>0.8)


x.freq<-table(x)/n
n<-10000
u<-runif(n)
d-runif(10000,min = 0 ,max=1)
for ( i in 1:10000){
  if ( u[i] <= 0.2){
    u[i]<-1
 }
  if (u[i]<0.2 & u[i]<=0.7){
    u[i]<-2
  }
  if (u[i]>0.7  & u[i]<=0.8){
    u[i]<-3
  }
  if (u[i]<0.8){
    u[i]<-4
  }
}

barplot(x.freq,main="Mon titre")
barplot(c(0.2,0.5,0.1,0.2),names.arg = 1:4,main ="Mon titre 2")


