//
//  ViewController.swift
//  Examen
//
//  Created by Macbook Air 5 on 03/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func anterior(_ sender: Any) {
    }
    
    @IBAction func siguiente(_ sender: Any) {
    }
    
    @IBOutlet weak var pantalla: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
    var anteriorSiguiente = [Int](repeating: 0, count: 100)
    var tmpIndex = 0
    
    
    func fibonacci(){
        
        
        for i in anteriorSiguiente.append(0)...anteriorSiguiente(?){
            anteriorSiguiente.append(i)
        }
        
    if tmpIndex < 100 {
        pantalla.text = ("\(anteriorSiguiente [tmpIndex])")
        tmpIndex += 1
    }else{
        tmpIndex = 0
    }
    
    }
*/

    var memoria = [Int: Int]()
    
    func fibonacci(x: Int)-> Int{
        if x==0{
            memoria[x]=0
            return 0
        }
        if x==1{
            memoria[x]=1
            return 1
        }
        if let valor = memoria[x]{
            return valor1
        }else{
            
            let resultado = fibonacci(x: x-1) + fibonacci(x: x-2)
            memoria[x] = resultado
            return resultado
        }
            
            
        }
        
        print(fibonacci(x: ))
    }
    
    
    

}

