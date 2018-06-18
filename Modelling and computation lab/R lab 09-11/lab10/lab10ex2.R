n=(readline(prompt="Enter the number of products: "))
qCheck=function(N){
  n=as.integer(N)
  rwrong=0
  rcorrect=0
  x=rnorm(n,mean=10,sd=0.2)
  
  index=sample(n,0.3*n,replace=T)
  for (i in index){
    if(x[i]>=9.6 && x[i]<=10.4)
    {rcorrect=rcorrect+1}
    else {rwrong=rwrong+1}
  }

  rcorrect1=rcorrect*0.999 # correct item pass through machine in b/w desirable radius 
  rwrong1=rwrong*0.95 # incorrect item pass through machine in b/w desirable radius
  rcorrect2=rwrong-rwrong1 
  R=rcorrect1+rcorrect2 #correct item after text one
  
  P1=R*.995  #well painted item
  P2=R*.005  #wrong painted item
  PC1=P1*.995  
  PC2=(R-P1)*.01
  PCorrect=PC1+PC2
  
  print("fraction of that was defective")
  print((n*.3-PCorrect)/n)
  wrong1=rwrong+P2
  print("wrong painted or radius wrong")
  print(wrong1/n)
  print("products that had the right paint and radius right but consider as a defective ")
  rco1=rcorrect*(0.001)+R*(.005)
  print(rco1/n)
  rco2=(rcorrect2+PC2)
  print("wrong paint or wrong radius but include in correct item")
  print(rco2/n)
  }
qCheck(n)