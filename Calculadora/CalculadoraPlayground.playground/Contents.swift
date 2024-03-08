

struct Calculadora {
    
    func suma(x1: Double, x2: Double) -> Double {
        return x1 + x2
    }
    
    func resta(x1: Double, x2: Double) -> Double {
        return x1 - x2
    }
    
    func division(x1: Double, x2: Double) -> Double {
        return x1 / x2
    }
    
    func multiplicacion(x1: Double, x2: Double) -> Double {
        return x1 * x2
    }
}


let miCalculadora = Calculadora()

print(miCalculadora.suma(x1: 1, x2: 1)) // 2
print(miCalculadora.suma(x1: 2, x2: 2)) // 4

print(miCalculadora.multiplicacion(x1: 2, x2: 2)) // 4
print(miCalculadora.multiplicacion(x1: 10, x2: 10)) // 100
