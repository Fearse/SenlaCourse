import Foundation
func eratosfen(n:Int)->[Int]{
    var a=[Int](2...n)
    for p in 2...n-1 where a[p-2]>0{
        for i in p+1...n where i%p==0{
            a[i-2]=0
        }
    }
    return a.filter({$0>0})
}
print(eratosfen(n:23))


