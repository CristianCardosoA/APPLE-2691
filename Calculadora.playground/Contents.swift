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
    
    mutating func
}



protocol CalculadoraProtocol {
    
    func valorx(_ valor: Double)
    func valory(_ valor: Double)
    func realizarOperacion() -> Double
    
}

struct CacheModelo {
    var valorX: Double
    var valorY: Double
    var op: Operacion
    
    init(){
        valorX = 0.0
        valorX = 0.0
        
    }
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

struct Cache: CacheProtocol{
    
    var cacheString = ""
    var cacheNumerox = 0.0
    var cacheNumeroY = 0.0
    var cacheOperacion = Operacion.sum
    
    func guardaNum(num: Int) {
        <#code#>
    }
    
    func guardaOp(op: Operacion) {
        <#code#>
    }
    
    func igual() -> Double {
        <#code#>
    }
    
    
}




struct Procesamiento: ProcesamientoProtocol{
    func sum(x: Double, y: Double) -> Double {
        return x + y
    }
    
    func res(x: Double, y: Double) -> Double {
        return x - y
    }
    
    func mul(x: Double, y: Double) -> Double {
        return x * y
    }
    
    func div(x: Double, y: Double) -> Double {
        return x / y
    }
    
    
}

struct Calculadora: CalculadoraProtocol{
    
   
    var display: DisplayProtocol = Display()
    var cache: CacheProtocol = Cache()
    var procesamiento: ProcesamientoProtocol = Procesamiento()
    
    func valorx(_ valor: Double) {
        
    }
    
    func valory(_ valor: Double) {
        <#code#>
    }
    
    func realizarOperacion() -> Double {
        <#code#>
    }
    
    
}


    

    
    
    
    
    

