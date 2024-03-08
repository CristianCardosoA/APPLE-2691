//: Playground - noun: a place where people can play

import UIKit



struct Calculadora {
    
    func sum (x1 : Double, x2 : Double) -> Double{
        return x1 + x2
    }
    
    func res (x1 : Double, x2 : Double) -> Double{
        return x1 - x2
    }
    
    func mult (x1 : Double, x2 : Double) -> Double{
        return x1 * x2
    }
    
    func div (x1 : Double, x2 : Double) -> Double{
        return x1 / x2
    }
    
}
let calculadora = Calculadora()

let x1 = 10.5
let x2 = 2.5

print("La suma es: \(calculadora.sum(x1, x2: x2))")
print("La suma es: \(calculadora.res(x1, x2: x2))")
print("La suma es: \(calculadora.mult(x1, x2: x2))")
print("La suma es: \(calculadora.div(x1, x2: x2))")