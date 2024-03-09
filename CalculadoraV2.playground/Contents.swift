import UIKit

enum CalculadoraError{
    
    case divCero
    case maxNum
    case minNum
}

enum Operacion{
    
    case suma
    case resta
    case multiplicacion
    case division
}

protocol DisplayProtocol{
    
    func mostrarResultado(resultado: Double)-> String
    func mostrarNumero(numero: Double)-> String
    func mostrarError(error: CalculadoraError)-> String
    
}

protocol ProcesamientoProtocol{
    
    func suma(x: Double, y:Double)-> Double
    func resta(x: Double, y:Double)-> Double
    func multiplicacion(x: Double, y:Double)-> Double
    func division(x: Double, y:Double)-> Double
}

protocol CacheProtocol{
    
    func guardarNumero(num: Int)-> Double
    func guardarOperacion(op: Operacion)
}

protocol ControlProtocol{
    
    func igual()-> Double
}

protocol CalculadoraProtocol{}


struct Display: DisplayProtocol {
    func mostrarResultado(resultado: Double) -> String {
        "Aun no esta implementado"
    }
    
    func mostrarNumero(numero: Double) -> String {
        "Aun no esta implementado"
    }
    
    func mostrarError(error: CalculadoraError) -> String {
        "Aun no esta implementado"
    }
    
    
    
}

struct Procesamiento: ProcesamientoProtocol{
    func suma(x: Double, y: Double) -> Double {
        return x + y
    }
    
    func resta(x: Double, y: Double) -> Double {
        return x - y
    }
    
    func multiplicacion(x: Double, y: Double) -> Double {
        return x * y
    }
    
    func division(x: Double, y: Double) -> Double {
        return x / y
    }

        
}
    
struct Cache: CacheProtocol{
    
    func guardarNumero(num: Int) -> Double {
        
    }
    
    func guardarOperacion(op: Operacion) {
        
    }
}

struct Control: ControlProtocol{
    
    func igual() -> Double {
            
    }
        
}

struct Calculadora: CalculadoraProtocol {
    
    var display: DisplayProtocol = Display()
    var cache: CacheProtocol = Cache()
    var control: ControlProtocol = Control()
    var procesamiento: ProcesamientoProtocol = Procesamiento()
    
    
}
