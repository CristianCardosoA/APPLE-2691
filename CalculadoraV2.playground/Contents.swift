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
    
    func insertaX(num: Int)-> Double
    func insertaY(num: Int)-> Double
    func insertaOperacion(op: Operacion)
    func igual()->Double
}

struct cacheModelo{
    
    var valor1: Double
    var valor2: Double
    var op: Operacion
    
    init(){
        
    }
    
}

protocol ControlProtocol{
    
    func igual()-> Double
}

protocol CalculadoraProtocol{}


struct Display: DisplayProtocol {
    func mostrarResultado(resultado: Double) -> String {
        "\(resultado)"
    }
    
    func mostrarNumero(numero: Double) -> String {
        "\(numero)"
    }
    
    func mostrarError(error: CalculadoraError) -> String {
        "\(error)"
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
    
    var modeloCache = CacheModelo()
    var cacheString = null
    var cacheNumeroX = 0.0
    var cacheNumeroY = 0.0
    var cacheOperacion = operacion.suma
    
    
    func insertaX(num: Int) {
        cacheString.
    }
    
    func insertaX(num: Int) {
        cacheString.
    }
    
    func guardarOperacion(op: Operacion) {
        cacheOperacion = op
    }
    
    fucn igual()->CacheModelo{
        
        
    }
}

struct Control: ControlProtocol{
    
    func igual() -> Double {
        
        return 2.2
    }
        
}

struct Calculadora: CalculadoraProtocol {
    
    var display: DisplayProtocol = Display()
    //var cache: CacheProtocol = Cache()
    var control: ControlProtocol = Control()
    var procesamiento: ProcesamientoProtocol = Procesamiento()
    
    
}

/*let calculadora = Calculadora()
calculadora.valor(1)
calculadora.valor(2)
calculadora.OPERACION(SUM)
calculadora.*/
