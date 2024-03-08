
struct Calculadora{
    
    func operacionSuma(num1: Double, num2: Double) ->Double{
        
        return num1 + num2
    }
    
    func operacionResta(num1: Double, num2:Double) ->Double{
        
        return num1 - num2
        
    }
    
    func operacionDivision(num1: Double, num2:Double)-> Double{
        
        if num2 == 0{
            
            return 0
            
        } else {
            
            return num1 / num2
        }
    }
    
    func operacionMultiplicacion(num1: Double, num2: Double)->Double{
        
        return num1 * num2
    }
    
}

let calculadora = Calculadora()

print("El resultado de la suma es \(calculadora.operacionSuma(num1: 34.3, num2: 43.2))")

print("El resultado de la resta es \(calculadora.operacionResta(num1: 12.2, num2: 1.1))")

let valorDiv = calculadora.operacionDivision(num1: 12, num2: 0)
print(valorDiv == 0 ? "Error" : "El resultado de la division es \(valorDiv)")

print("El resultado de la multiplicacion es \(calculadora.operacionMultiplicacion(num1: 23.3, num2: 43.2))")
