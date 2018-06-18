def rev_string(strn):
    rstring=""
    a=len(strn)
    for i in range (a-1,-1,-1):
        rstring=rstring +  strn[i]
    return(rstring);
s=rev_string("1234abcd")
print(s)
