Exact_prob=(1-(.6^30)-(.4*.6^29)-(.4^2*.6^28)-(.4^3*0.6^27)-(.4^4*.6^25))
print("exact probabitity")
print(Exact_prob)

set.seed(10000)
Set=rbinom(100000, 1, 0.4)
count=0
A=seq(1:10000)
for(i in A)
  {
  X=sample(Set,size = 30,replace = FALSE)
  if(sum(X)>5) {
    count=count+1
  }
  
}
Total=sum(count)
prob=(Total/10000)
print("estimated probabitity")
print(prob)

