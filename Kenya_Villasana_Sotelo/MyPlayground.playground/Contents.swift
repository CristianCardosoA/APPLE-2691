struct Calculadora {
    var operando1: Double
    var operando2: Double
   
    func sumar() -> Double {
        return operando1 + operando2
    }
   
    func restar() -> Double {
        return operando1 - operando2
    }
   
    func multiplicar() -> Double {
        return operando1 * operando2
    }
   
    func dividir() -> Double {
        guard operando2 != 0 else {
            print("Error: No se puede dividir por cero.")
            return 0.0
        }
        return operando1 / operando2
    }
}

// Ejemplo de uso
var miCalculadora = Calculadora(operando1: 50.0, operando2: 5.0)
let resultadoSuma = miCalculadora.sumar()
let resultadoResta = miCalculadora.restar()
let resultadoMultiplicacion = miCalculadora.multiplicar()
let resultadoDivision = miCalculadora.dividir()

print("Suma: \(resultadoSuma)")
print("Resta: \(resultadoResta)")
print("Multiplicación: \(resultadoMultiplicacion)")
print("División: \(resultadoDivision)")

