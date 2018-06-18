n=readline(prompt = "enter the value of n")
n <- as.integer(n)
p=readline(prompt = "enter the value of p")
p <- as.numeric(p)
Bionom=function(N,P){
  
  X=rbinom(n=1000,size = N,prob=P)
  return(X)
}
Bernoulli=function(n,p){
  V=c()
  d=seq(1,1000,1)
  for (i in d){
    U= runif(n,min=0,max = 1)
    x=(U<p)
    x=as.numeric(x)
    V=append(sum(x),V)
  }
  return(V)
}

Binomial=Bionom(n,p)
Bernouli=Bernoulli(n,p)
par(mfrow=c(1,2))
hist(Binomial)
hist(Bernouli)

