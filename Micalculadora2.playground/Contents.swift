lst miCalculadora = Calculadora()

print(miCalculadora.suma)
print(miCalculadora.suma)



enum CalculadoraError{
    
    case divZero
    case maxnum
    caseminNum
    
    
    
}

enum operacion{
    
    case sum
    case res
    case mul
    case div
    
    
}

protocol DisplayProtocol {
    
    func muestraResultado(Double resultado) -> String
    func muestraNumero(Double resultado) -> String
    func muestraError(Double resultado) -> String
    
}


protocol ProcesamientoProtocol{
    
    func sum(x: Double, y: Double) -> Double
    func res(x: Double, y: Double) -> Double
    func mul(x: Double, y: Double) -> Double
    func div(x: Double, y: Double) -> Double
    
}

protocol cacheProtocol{
    
    func guardaNum(num: Int) -> Double
    func GuardaGP(op: Operacion)
    
}

protocol ControlProtocol{
    func igual() -> Double
    
}

struct Display: DisplayProtocol{
    
    
    func muestraResultado(Double resultado) -> String{
        "AUN NO ESTA IMPLEMENTADO"
    }
    
    
    func muestraNumero(Double resultado) -> String{
        "AUN NO ESTA IMPLEMENTADO"
    }
    
    
    func muestraError(Double resultado) -> String{
        "AUN NO ESTA IMPLEMENTADO"
    }
}


struct Cache:cacheProtocol{
    func guardaNum(num: Int) -> Double {
        
    }
    
    
}

struct Control: ControlProtocol{
    func igual() -> Double {
        
    }
    
    
}

struct Procesamiento: ProcesamientoProtocol{
    func sum(x: Double, y: Double) -> Double {
    }
    
    func res(x: Double, y: Double) -> Double {
        
    }
    
    func mul(x: Double, y: Double) -> Double {

    }
    
    func div(x: Double, y: Double) -> Double {
        
    }
    
    
}

protocol CalculadoraProtocol{
  
    var display: DisplayProtocol = Display()
    var cache: cacheProtocol = cacheProtocol()
    var control: ControlProtocol = ControlProtocol()
    var Procesamiento: ProcesamientoProtocol = ProcesamientoProtocol()
}

let miCalculadora = Calculadora()



