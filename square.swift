import Foundation
func kvUravn(a:Double,b:Double,c:Double)->String{
    let d=(b*b-4*a*c);
    if(a==0){
        if(b==0)
        {
            return "Уравенение имеет бесконечное количество решений"
        } else {
            return "Решение уравнения: "+String(Double(-c/b))
        }
    } else {
        if (d<0) {
            return ("Уравнение не имеет решений")
        } else {
            if(d==0){
                return "Решение уравнения: "+String(Double(-b/(2*a)))
            } else {
                return "Решения уравнения: "+String(Double((-b+sqrt(d))/(2*a))) + " и " + String(Double((-b-sqrt(d))/(2*a)))
            }
        }
    }
}
print(kvUravn(a:1,b:-4,c:4))


