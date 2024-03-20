//
//  ViewController.swift
//  Gato
//
//  Created by Facultad Contaduría y Administración on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var miArreglo = [Int]()
    var tmpIndex = 0
    
    @IBAction func onTap(_ sender: Any) {
        if tmpIndex < 100{
            labelNombre.text = "\(miArreglo[tmpIndex])"
            tmpIndex += 1
        }

        
    
    }
    

    
    @IBOutlet var labelNombre: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        inicializa()
       
    
    }

    func inicializa(){
        for i in 1...100{
            miArreglo.append(i)
        }
    }

}

