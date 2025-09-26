setwd("C:\\Users\\it24101341\\Desktop\\IT24101341")

data<- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

popmn <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)

samples <- c()
n <- c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples) =n
s.means <- apply(samples ,2,mean)
s.sd <- apply(samples,2,sd)

samplemean <- mean(s.means)
samplesd <- sd(s.sd)

truesd = popsd / 6
samplesd

truemn = popmn /6
samplemean