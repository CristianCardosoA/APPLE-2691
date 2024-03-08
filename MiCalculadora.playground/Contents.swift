/*
func suma(){}
func resta (){}
func multi (){}
func div (){}


class Calculadora {
}

class CalculadoraExtendida: Calculadora{
}

print(Int.max)
*/

struct Calculadora{
    var num1: Double
    var num2: Double
    
    func suma(num1: Double, num2: Double) -> Double{
        
        let resultadoSuma = num1 + num2;
        return resultadoSuma
        print("\(num1)+\(num2)=\(resultadoSuma)")
    }
    
    func resta(num1: Double, num2: Double) -> Double{
        
        let resultadoResta = num1 - num2
        return resultadoResta
        print("\(num1)-\(num2)=\(resultadoResta)")
    }
    
    func multi(num1: Double, num2: Double) -> Double{
        
        let resultadoMulti = num1 * num2
        return resultadoMulti
        print("\(num1)*\(num2)=\(resultadoMulti)")
    }
    
    func div(num1: Double, num2: Double) -> Double{
        
        let resultadoDiv
        if num2 == 0 {
            print("ERROR!")
        } else {
            resultadoDiv = num1 / num2
        }
        return resultadoDiv
        print("\(num1)+\(num2)=\(resultadoSuma)")
    }
    
    func igual(){
        case
    }
}
