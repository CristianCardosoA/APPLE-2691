//
//  ViewController.swift
//  Intento, transiciones
//
//  Created by Facultad de Contaduría y Administracíon on 10/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        performSegue(withIdentifier: "primerSegue", sender: nil)
    }
    
    
    
    @IBAction func A1toA11(_ sender: Any) {
        performSegue(withIdentifier: "A11", sender: nil)
    }
    
    
}

