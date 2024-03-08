import UIKit

struct Calculadora{
    func suma(x1: Double, x2: Double) -> Double{
        return x1 + x2
    }
}

let miCalculadora = Calculadora()
print(miCalculadora.suma(x1: 1, x2: 1)) //2
