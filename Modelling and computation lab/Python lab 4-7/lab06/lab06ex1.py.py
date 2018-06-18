import numpy as np
import matplotlib.pylab as plt



a=[]
fname=open("milk.txt",'r')
fline = fname.readline()
while (fline):
    a.append(int(fline))
    fline=fname.readline()

mean=np.mean(a)
s =np.std(a)

print 'mean is=',mean
print 'standard deviation=',s


plt.plot(a)
plt.show()

plt.hist(a)
plt.title(" Histogram ")
plt.xlabel("Time")
plt.ylabel("Demand")
plt.show()

def profit(stock):
    m=[]
    for i in range (0,500):
        d= a[i]-stock 
        if d>=0:
            p=stock*6
        elif d<0:
            l=d*2
            pr=a[i]*6
            p=pr+l
        m.append(p)
    E=(sum(m))/500
    return E

Avg=profit(1000)
print "expexted profit for 1000 l stock=",Avg

matStk = []
matPro = []
for stock in range (500, 1500, 10):
    matStk.append(stock)
    matPro.append(profit(stock))
plt.plot( matStk,matPro)
plt.show()
    
optimum=matPro.index(max(matPro))
optimum_stock=matStk[optimum]
print 'optimum for maximum profit ='+str(optimum_stock)


