def perfect_no(a):
    s=0
    for i in range (1,a):
        if a%i==0:
            s=s+i
    if (s==a):
        print("number is perfect",a)
    else:
        print("number is not perfect",a)
    return;
n=int(input("engter any no."))
perfect_no(n)
