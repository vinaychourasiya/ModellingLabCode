import random 
import numpy as np
random.seed(100)

def Guass1(B):
    emp=[]
    R=0    
    for i in range (0,3):
            if B[i,i]!=0:
                
                for j in range (i+1,3):
                    coff=B[j,i]/float (B[i,i])
                    for k in range (i,4):
                        B[j,k]=B[j,k]-(B[i,k]*coff)
            elif B[i,i]==0:
                for p in range (i+1,3):
                    if B[p,i]!=0:
                        
                        for j in range (0,4):
                            emp.append(B[i,j])
                            B[i,j]=B[p,j]
                            B[p,j]=emp[j]
                            break
                        for k in range (i,4):
                            B[j,k]=B[j,k]-(B[i,k]*coff)
    for f in range (0,3):
        for e in range (0,4):
            if e==f:
                if B[f,e] != 0:
                    R=R+1
                    break
                else:
                    continue
            else:
                continue
    print B
   
    print ("given column vectors is dependent")
    
    print ("rank of matrix",R)
    
    
B=np.array([[1,2,2,2],[2,4,6,8],[3,6,8,10]])
print B
Guass1(B)
