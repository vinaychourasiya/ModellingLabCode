X= c(0.86,1.06,2.03,0.67,0.4,1.04,0.76,0.95,1.12,1.02,1.01,0.9)
Y= c(13.6,16.6,23.5,10.2,5.4,15,9,12.3,16.3,15.4,13,14.4)
Y1=c()

par(mfrow = c(1,2))
plot(X, Y, xlab="nicotine", ylab="CO") 

fit = lm(Y ~ X)   

abline(fit)       

summary(fit)
resi = resid(fit)
print(resi)
plot(Y,resi, ylab="Residuals", xlab="Y") 


for (i in X){
 Y2=10.96*i+2.929
 Y1=append(Y1,Y2)
}

print(summary(fit))

V=data.frame(X,Y1)
print("new data frame")
print(V)

