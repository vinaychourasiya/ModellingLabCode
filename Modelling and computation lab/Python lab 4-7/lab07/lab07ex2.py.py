import random 
import numpy as np
random.seed(100)



def Matrix():
    x=input("do you want input matrix if yes then press 1 otherwise 0")
    if x==1:
        m=input("enter the no. of row")
        n=input("enter the no, of column")
        s=[]
        A=[]
        print (" input all elements of matrix start from 1st row to last row in Row wise A11,A12...A21 A22..")
        for i in range (0,m):
            for j in range (0,n):
                 
                x1 = float(raw_input(""))
                
                s.append(x1)
            A.append(s)
            s=[]
        A=np.array(A)
        print (A)
        print ("\n")
        return A
        
    else:
        m=input("enter the no. of row")
        n=input("enter the no, of column")

        A=np.random.randint(1,m+1,(m,n)).astype('float')
        print A
        return A
def Guass(M):
    A=M
    R= 0
    m=len(A)
    n=len(A[0])
    emp=[]    
    for i in range (0,n-1):
        if A[i,i]!=0:
            
            for j in range (i+1,m):
                coff=A[j,i]/float (A[i,i])
                for k in range (i,n):
                    A[j,k]=A[j,k]-(A[i,k]*coff)
        elif A[i,i]==0:
            for p in range (i+1,m):
                if A[p,i]!=0:
                    
                    for j in range (0,n):
                        emp.append(A[i,j])
                        A[i,j]=A[p,j]
                        A[p,j]=emp[j]
                        break
                    for k in range (i,n):
                        A[j,k]=A[j,k]-(A[i,k]*coff)
    for f in range (0,m):
        for e in range (0,n):
            if e==f:
                
                if A[f,e] != 0:
                    R=R+1
                    break
                else:
                    continue
            else:
                continue
                
    print ("\n")
    print A
    print ("\n")
    print ("rank of matrix",R)
    print ("\n") 
    
    if m<n:
        print("given column vectors is dependent")
    else:
        if R==n:
            print("given column vectors is independent")
        else:
            print("given column vectors is dependent")
            
        
def F_Augmented(N):
    A=N
    B=[]
    C=0
    m=len(A)
    n=len(A[0])
    for k in range(0,m):
        for j in range (0,n):
            C=C+A[k,j]
        B.append(C)
        C=0
    print ("column matrix B")
    print B
    augmented=A.tolist()
    for i in range (0,n):
        augmented[i].append(B[i])
    augmented=np.array(augmented)
    print ("\n")
    print augmented
    return augmented
    
    
    
result = Matrix()
M= result
Guass(M)
print ("\n")
print("Solution for AX=B")
N=Matrix()
aug=F_Augmented(N)
Guass(aug)



    
