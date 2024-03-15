//
//  ViewController.swift
//  GATO
//
//  Created by Facultad de Contaduría y Administracíon on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
    var unoMas = [Int](repeating: 0, count: 100)
    var index = 0
    
    func iteracion(){
        for i in 0...100{
            unoMas.append(i)
        }
        
        
    }
    @IBOutlet weak var labelNombre: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
        
        if index<100{
            labelNombre.text = "\(unoMas[index])"
            index += 1
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        iteracion()
        // Do any additional setup after loading the view.
        
        
        
        
        
        
    }


}

