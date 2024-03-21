//
//  ViewController.swift
//  Gato
//
//  Created by Facultad de Contaduría y Administración on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var array = [Int] (repeating: 0, count: 100)
    var impindex = 0
    
    @IBOutlet weak var labelNombre: UILabel!

    @IBAction func onTap(_ sender: UIButton) {
        if tmpIndex < 100
            labelNombre.text = "\(miArreglo)"
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        iteracion()
    }
    
    override func viewDidLoad(){
        super
    }
    
    func iteracion(){
        for i in 1...100{
            array.append(i)
        }
    }
    
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNombre.text = "Aldo Marianoooo"
        // Do any additional setup after loading the view.
    }

    

}

