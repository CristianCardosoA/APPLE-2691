enum CalculadoraError {
    
    case divZero
    case masNum
    case minNum
}

enum Operacion{
    case sum
    case res
    case mul
    case div
}

protocol DisplayProtocol {
    
    func muestraResultado(resultado: Double) -> String
    func muestraNumero(numero: Double) -> String
    func muestraError(error: CalculadoraError) -> String
}

protocol ProcesamientoProtocol {
    
    func sum(x: Double, y: Double) -> Double
    func res(x: Double, y: Double) -> Double
    func mul(x: Double, y: Double) -> Double
    func div(x: Double, y: Double) -> Double
}

protocol CacheProtocol {
    
    func guardaNum(num: Int) -> Double
    func guardaOp(op: Operacion)
}

protocol ControlProtocol {
    
    func igual() -> Double
}

protocol CalculadoraProtocol {
    
}


struct Display: DisplayProtocol{
    func muestraResultado(resultado: Double) -> String {
        "AUN NO ESTA IMPLEMENTADO"
    }
    
    func muestraNumero(numero: Double) -> String {
        "AUN NO ESTA IMPLEMENTADO"
    }
    
    func muestraError(error: CalculadoraError) -> String {
        "AUN NO ESTA IMPLEMENTADO"
    }
    
}

struct Calculadora: CalculadoraProtocol {
    
    var display: DisplayProtocol = Display()
    var cache: CacheProtocol = Cache()
    var control: ControlProtocol = Control()
    var procesamiento: ProcesamientoProtocol = Procesamiento()
    
    
}
