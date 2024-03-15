//
//  ViewController.swift
//  Gato1.1
//
//  Created by Facultad de Contaduría y Administración on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var arreglo = [Int]()
    
    var temporal = 0
    
    @IBAction func onTab(_ sender: Any) {
        
        if temporal < 100 {
            labelNombre.text = "\(arreglo[temporal])"
            temporal += 1
        } else {
            
            temporal = 0
            
        }
    }
    
    @IBOutlet weak var labelNombre: UILabel!
    
    func inicializador(){
         
        for i in 1...100{
            
            arreglo.append(i)
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inicializador()
        
        
    }


}

