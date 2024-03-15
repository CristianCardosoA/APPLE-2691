import Foundation


enum CalculadoraError {
    case divZero
    case maxNum
    case minNum
}

enum Operacion {
    case sum
    case res
    case mul
    case div
    case rai
}

protocol DisplayProtocol {
    func muestraResultado(resultado: Double) -> String
    func muestraError(error: CalculadoraError) -> String
}

protocol ProcesamientoProtocol {
    func sum(x: Double, y: Double) -> Double
    func res(x: Double, y: Double) -> Double
    func mul(x: Double, y: Double) -> Double
    func div(x: Double, y: Double) -> Double
    func rai(x: Double) -> Double
    func procesa(op: CacheModelo) -> Double
}

protocol CacheControlProtocol {
    mutating func insertaX(num: Double)
    mutating func insertaY(num: Double)
    mutating func insertaOp(op: Operacion)
    mutating func igual() -> CacheModelo
}

struct CacheModelo {
    var valorX: Double
    var valorY: Double
    var op: Operacion

    init(valorX: Double, valorY: Double, op: Operacion) {
        self.valorX = valorX
        self.valorY = valorY
        self.op = op
    }
}

struct Display: DisplayProtocol {
    func muestraResultado(resultado: Double) -> String {
        "🎃: \(resultado)"
    }

    func muestraError(error: CalculadoraError) -> String {
        "🤬: Error \(error)"
    }
}

struct CacheControl: CacheControlProtocol {
    var cacheNumeroX: Double = 0
    var cacheNumeroY: Double = 0
    var cacheOperacion = Operacion.sum

    mutating func insertaX(num: Double) {
        cacheNumeroX = num
    }

    mutating func insertaY(num: Double) {
        cacheNumeroY = num
    }

    mutating func insertaOp(op: Operacion) {
        cacheOperacion = op
    }

    private mutating func flush() {
        cacheNumeroX = 0
        cacheNumeroY = 0
        cacheOperacion = Operacion.sum
    }

    mutating func igual() -> CacheModelo {
        let cache = CacheModelo(
            valorX: cacheNumeroX,
            valorY: cacheNumeroY,
            op: cacheOperacion
        )
        flush()
        return cache
    }

}

struct Procesamiento: ProcesamientoProtocol {

    func procesa(op cacheModelo: CacheModelo) -> Double {
        switch cacheModelo.op {
        case .sum:
            return sum(x: cacheModelo.valorX, y: cacheModelo.valorY)
        case .res:
            return res(x: cacheModelo.valorX, y: cacheModelo.valorY)
        case .mul:
            return mul(x: cacheModelo.valorX, y: cacheModelo.valorY)
        case .div:
            return div(x: cacheModelo.valorX, y: cacheModelo.valorY)
        case .rai:
            return rai(x: cacheModelo.valorX)
        }
    }

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
    func rai(x: Double) -> Double {
        return sqrt(x)
    }
}

protocol CalculadoraProtocol {
    mutating func valorX(x: Double)
    mutating func valorY(y: Double)
    mutating func operacion(op: Operacion)
    mutating func igual() -> String
}

struct Calculadora: CalculadoraProtocol {

    var display: DisplayProtocol = Display()
    var cacheControl: CacheControlProtocol = CacheControl()
    var procesamiento: ProcesamientoProtocol = Procesamiento()

    mutating func valorX(x: Double) {
        cacheControl.insertaX(num: x)
    }

    mutating func valorY(y: Double) {
        cacheControl.insertaY(num: y)
    }

    mutating func operacion(op: Operacion) {
        cacheControl.insertaOp(op: op)
    }

    mutating func igual() -> String {
        let cacheModelo = cacheControl.igual()
        let resultado = procesamiento.procesa(op: cacheModelo)
        return display.muestraResultado(resultado: resultado)
    }
}

var calculadora = Calculadora()
calculadora.valorX(x: 169)
calculadora.operacion(op: .rai)

let resultado = calculadora.igual()
print(resultado)
