a=readline(prompt = "enter the value of n")
n=seq(1,a,1)
MeanX=c()
MeanY=c()
medianX=c()
medianY=c()
for (i in n)
{
  x=rnorm(i, mean = 0, sd = 1)
  y=rcauchy(i, location = 0, scale = 1)
  MeanX[i]=mean(x)
  MeanY[i]=mean(y)
  medianX[i]=median(x)
  medianY[i]=median(y)

  
}

par(mfrow=c(2,2))
plot(n,MeanX,type = 'b',col='red', main="MEAN of X")
plot(n,MeanY,type = 'b',col='blue',main="Mean of Y")
plot(n,medianX,type = 'b',col='Green', main="Median of X")
plot(n,medianY,type = 'b',col='black', main="Median of Y")

