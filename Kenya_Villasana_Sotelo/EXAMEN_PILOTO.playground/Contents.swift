@@ -13,7 +13,6 @@ enum Operacion {

protocol DisplayProtocol {
    func muestraResultado(resultado: Double) -> String
    func muestraNumero(numero: Double) -> String
    func muestraError(error: CalculadoraError) -> String
}

@@ -22,37 +21,147 @@ protocol ProcesamientoProtocol {
    func res(x: Double, y: Double) -> Double
    func mul(x: Double, y: Double) -> Double
    func div(x: Double, y: Double) -> Double
    func procesa(op: CacheModelo) -> Double
}

protocol CacheProtocol {
    func guardaNum(num: Int) -> Double
    func guardaOp(op: Operacion)
protocol CacheControlProtocol {
    mutating func insertaX(num: Int)
    mutating func insertaY(num: Int)
    mutating func insertaOp(op: Operacion)
    mutating func igual() -> CacheModelo
}

protocol ControlProtocol {
    func igual() -> Double
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

protocol CalculadoraProtocol { }

struct Display: DisplayProtocol {
    func muestraResultado(resultado: Double) -> String {
        "AUN NO ESTA IMPLEMENTADO 🤬"
        "🎃: \(resultado)"
    }

    func muestraError(error: CalculadoraError) -> String {
        "🤬: Error \(error)"
    }
}

struct CacheControl: CacheControlProtocol {
    var cacheNumeroX = ""
    var cacheNumeroY = ""
    var cacheOperacion = Operacion.sum

    func muestraNumero(numero: Double) -> String {
        "AUN NO ESTA IMPLEMENTADO 🤬"
    mutating func insertaX(num: Int) {
        cacheNumeroX.append("\(num)")
    }

    func muestraError(error: CalculadoraError) -> String {
        "AUN NO ESTA IMPLEMENTADO 🤬"
    mutating func insertaY(num: Int) {
        cacheNumeroY.append("\(num)")
    }

    mutating func insertaOp(op: Operacion) {
        cacheOperacion = op
    }

    private mutating func flush() {
        cacheNumeroX = ""
        cacheNumeroY = ""
        cacheOperacion = Operacion.sum
    }

    mutating func igual() -> CacheModelo {
        let cache = CacheModelo(
            valorX: Double(cacheNumeroX)!,
            valorY: Double(cacheNumeroY)!,
            op: cacheOperacion
        )
        flush()
        return cache
    }

}

struct Calculadora: CalculadoraProtocol {


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
}

protocol CalculadoraProtocol {

    mutating func valorX(x: Int)
    mutating func valorY(y: Int)
    mutating func operacion(op: Operacion)
    mutating func igual() -> String
}

struct Calculadora: CalculadoraProtocol {

    var display: DisplayProtocol = Display()
    var cache: CacheProtocol = Cache()
    var control: ControlProtocol = Control()
    var cacheControl: CacheControlProtocol = CacheControl()
    var procesamiento: ProcesamientoProtocol = Procesamiento()

    mutating func valorX(x: Int) {
        cacheControl.insertaX(num: x)
    }

    mutating func valorY(y: Int) {
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


//var calculadora = Calculadora()
//calculadora.valorX(x: 5)
//calculadora.operacion(op: .mul)
//calculadora.valorY(y: 5)
//
//let resultado = calculadora.igual()
//print(resultado)

