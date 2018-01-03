import proWrd as p
import time as t
import UniqueIdGenerator as u



k =[]
#0.766000032425

def timeit():
    b4 = t.time()
    for i in range(10**4):
        l = p.InvoiceSplit(",2")
    Af = t.time()
    print l
    print Af- b4


timeit()
