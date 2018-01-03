

#import UniqueIdGenerator as u

cpdef o2i(integer):
     cdef int i = integer
     return i

cdef extern from "Crandom.h":
    cdef int randrange(int)
    cdef void randspeed()
    cdef int dtoi(double)

cdef extern from "string.h":
    cdef int strlen(char *)

cdef extern from "stdlib.h":
    cdef char * itoa(int,char * ,int)

def stringlength(char *str):
    return strlen(str)
    
def i2s(int num):
    cdef char arr[5]
    return itoa(num,&arr[0],10)

def random_in_range(num):
    return randrange(num)

def randomspeed():
    randspeed()

def int2uikey(first,num1,maxplace1):
    cdef int num = o2i(num1)
    cdef int maxplace = o2i(maxplace1)
    l = i2s(num1)
    cdef int add = maxplace1 - stringlength(l)
    i = "0"*add
    b = "%s-%s%s"%(first,i,l)
    return b

def generateuniquekey(first,keys,le=5):
    return uniquekey(first,keys.keys(),le)

def uniquekey(first,keys,le=5):
    """generateuniquekey(first,list of keys,length=5)"""
    if le>8 :
        raise TypeError("length of the key should be less than 9")
    randomspeed()
    cdef int lenth
    cdef int maxrand = 10**(le-1)
    ran = random_in_range
    while True :
        lenth = ran(maxrand)
        bb = int2uikey(first,lenth,le)
        v = bb in keys
        if v == False :
            return bb
        else :
            continue
    


    

