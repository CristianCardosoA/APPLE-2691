struct Calculadora {
    
    static func operacionSuma(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
    
    static func operacionResta(num1: Double, num2: Double) -> Double {
        return num1 - num2
    }
    
    static func operacionDivision(num1: Double, num2: Double) -> Double {
        if num2 == 0 {
            print("No se puede dividir por cero")
            return 0
        }
        return num1 / num2
    }
    
    static func operacionMultiplicacion(num1: Double, num2: Double) -> Double {
        return num1 * num2
    }
}

print(Calculadora.operacionSuma(num1: 2.3, num2: 2.3))
print(Calculadora.operacionResta(num1: 4.3, num2: 2.3))
print(Calculadora.operacionDivision(num1: 2.3, num2: 1))
print(Calculadora.operacionMultiplicacion(num1: 2.3, num2: 2.3))
