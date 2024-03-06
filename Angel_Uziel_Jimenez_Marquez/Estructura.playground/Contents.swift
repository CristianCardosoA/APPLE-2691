import UIKit

var greeting = "Hello, playground"

struct Calculadora{
    
    var Operador1 : Float = 0
    var Operador2 : Float = 0
    
    func suma(a:Float, b:Float) -> Float{
        
        return a+b
        
    }
    
    func resta(a:Float, b:Float) -> Float{
        
        return a-b
        
    }
    
    func mult(a:Float, b:Float) -> Float{
        
        return a*b
        
    }
    
    func div(a:Float, b:Float) -> Float{
        
        return a/b
        
    }
    
}

var miCalculadora = Calculadora(Operador1: 4, Operador2: 2)

print(miCalculadora.suma(a: 4, b: 2))
print(miCalculadora.resta(a: 4, b: 2))
print(miCalculadora.div(a: 4, b: 2))
print(miCalculadora.mult(a: 4, b: 2))

