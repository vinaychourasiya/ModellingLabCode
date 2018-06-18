n=readline(prompt = "enter the value of n")
simvirus=function(n)
{infected = c(1)
v=sample(2:n,1)
infected=append(infected,v)
A=2
while(A!=0)
  {
    v=sample(1:n,1)
    if (v==infected[length(infected)]){next}
    else{
    for (i in infected)
    {
      if (i==v)
      {
        return(length(infected))
      }}}
  infected=append(infected,v) 
}
}
X=simvirus(n)
print("no. of computer infected in one run")
print(X)
Total=c()
for (j in 1:1000)
{X=simvirus(n)
Total=append(Total,X)
}

Mean1=mean(Total)
variance=var(Total)
print("no. of run 1000")
print("mean of Infected computers")
print(Mean1)
print("variance of Infected computers")
print(variance)
hist(Total)