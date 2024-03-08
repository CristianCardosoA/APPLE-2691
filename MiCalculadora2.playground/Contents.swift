/*
func suma(){}
func resta (){}
func multi (){}
func div (){}


class Calculadora {
}

class CalculadoraExtendida: Calculadora{
}

print(Int.max)
*/

//struct Calculadora{
//    var num1: Double
//    var num2: Double
//    
//    func suma(num1: Double, num2: Double) -> Double{
//        
//        let resultadoSuma = num1 + num2;
//        return resultadoSuma
//        print("\(num1)+\(num2)=\(resultadoSuma)")
//    }
//    
//    func resta(num1: Double, num2: Double) -> Double{
//        
//        let resultadoResta = num1 - num2
//        return resultadoResta
//        print("\(num1)-\(num2)=\(resultadoResta)")
//    }
//    
//    func multi(num1: Double, num2: Double) -> Double{
//        
//        let resultadoMulti = num1 * num2
//        return resultadoMulti
//        print("\(num1)*\(num2)=\(resultadoMulti)")
//    }
//    
//    func div(num1: Double, num2: Double) -> Double{
//        
//        let resultadoDiv
//        if num2 == 0 {
//            print("ERROR!")
//        } else {
//            resultadoDiv = num1 / num2
//        }
//        return resultadoDiv
//        print("\(num1)+\(num2)=\(resultadoSuma)")
//    }
//    
//    func igual(){
//        case
//    }
//}

enum CalculadoraError{
    
    case divZero
    case maxNum
    case minNum
}

enum Operacion{
    
    case sum
    case res
    case mul
    case div
}

/*
 Inicio Declaracion de Interfaces
 */
protocol DisplayProtocol {
    
    func muestraResultado(resultado: Double) -> String
    func muestraNumero(resultado: Double) -> String
    func muestraError(error: CalculadoraError) -> String
}

protocol ProcesamientoProtocol{
    
    func suma(x: Double, y: Double) -> Double
    func resta(x: Double, y: Double) -> Double
    func multi(x: Double, y: Double) -> Double
    func div(x: Double, y: Double) -> Double
}

protocol CacheProtocol{
    
    func guardaNum(num:Int) -> Double
    func guardaOp(op: Operacion)
}

protocol ControlProtocol{
    
    func igual() -> Double
}

protocol CalculadoraProtocol{
    //ToDo
}
/*
 Fin declaracion interfaces
 */

/*
 Display
 */
struct Display: DisplayProtocol{
    
    func muestraResultado(resultado:Double) -> String {
        "s"
    }
    
    func muestraNumero(numero:Double) -> String {
        "s"
    }
    
    func muestraError(error: CalculadoraError) -> String {
        "s"
    }
}

/*
 Cache
 */
struct Cache: CacheProtocol {
    
}

/*
 Control
 */
struct Control: ControlProtocol{
    
}

/*
 Procesamiento
 */
struct Procesamiento: ProcesamientoProtocol{
    
}
struct Calculadora: CalculadoraProtocol{
    
    var display: DisplayProtocol = Display()
    var cache: CacheProtocol = Cache()
    var control: ControlProtocol = Control()
    var procesamiento: ProcesamientoProtocol = Procesamiento()
}

