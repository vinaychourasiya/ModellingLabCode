set.seed(12345)
A=seq(1:10000)
V=c()
p=c()
count1=c()
Ti=c()
for(i in A){
  x=rbinom(n=35, size= 1, prob =.45)
  V=append(V,sum(x))
  
}
for(i in V){
  b=(35^.5*((i/35)-.45))
  Ti=append(Ti,b)
}
par(mfrow=c(2,2))
boxplot(Ti)
hist(Ti,breaks = seq(min(Ti),max(Ti),length=11))

y=c()
p=seq(0,1,0.01)
for(i in 1:100)
{
  a=log(10)
  for(j in 1:1000)
  {
    a=a+log((p[i]^A[j])*((1-p[i])^(35-A[j])))
  }
  y[i]=a
}
plot(y,type="l")
for(i in 1:100)
{
  if(max(y)==y[i])
  {
    print(p[i])
  }
}
