/*import UIKit

struct Calculadora{
    func suma(x1: Double, x2: Double) -> Double{
        return x1 + x2
    }
    
    func resta(x1: Double, x2: Double) -> Double{
        return x1 + x2
    }
    
    func suma(x1: Double, x2: Double) -> Double{
        return x1 + x2
    }
    
    func suma(x1: Double, x2: Double) -> Double{
        return x1 + x2
    }
    
}

let miCalculadora = Calculadora()

print(miCalculadora.suma(x1: 1, x2: 1)) //2
print(miCalculadora.suma(x1: 2, x2: 2)) //4


print(miCalculadora.multiplicacion(x1: 1, x2: 1)) //2
print(miCalculadora.multiplicacion(x1: 10, x2: 10)) //100


let miCalculadora 2 = Calculadora()

let resultado = miCalculaaodra.division(x1: 1, x2: 0)
if resultado == double.infinity {
    print("no se puede")
}
*/

enumCalculadoraError{
    case divZero
    case maxNum
    case minNum
}

enum Operacion{
    case sum
    case res
    case mul
    case div
}

protocol DisplayProtocol{
    func muestraResultado(resultado : Double) -> String
    func muestraNumero(numero: Double) -> String
    func muestraError(error: CalculadoraError) -> String
}


protocol ProcesamientoProtocol{
    func sum(x: Double, y: Double) -> Double{
        return x + y
    }
    func res(x: Double, y: Double) -> Double{
        return x - y
    }
    func mul(x: Double, y: Double) -> Double{
        return x * y
    }
    func div(x: Double, y: Double) -> Double{
        return x / y
    }
        
    }

protocol CacheProtocol{
    func guardaNum(num: Int) -> Double
    func guardaOp(op: Operation)
}

protocol ControlProtocol{
    func igual() -> Double
}


protocol CalculadoraProtocol
struct Display: DisplayProtocol{
    func muestraResultado(resultado: Double) -> String {
        "Aun no esta implementado"
    }
    func muestraNumero(numero: Double) -> String{
        "Aun no esta implementado"
    }
    func muestraError(error: CalculadoraError) -> String{
        "Aun no esta implementado"
    }
}

struct ControlProtocol{
        
}

struct Calculadora: CalculadoraProtocol{
    
    var display: DisplayProtocol = Display()
    var cache: CacheProtocol = Cache()
    var control: ControlProtocol = Control()
    var procesamiento: ProcesamientoProtocol = Procesamiento()
    
}
