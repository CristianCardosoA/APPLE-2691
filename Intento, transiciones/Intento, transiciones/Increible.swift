//
//  Increible.swift
//  Intento, transiciones
//
//  Created by Facultad de Contaduría y Administracíon on 10/04/24.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AtoA1(_ sender: Any) {
        performSegue(withIdentifier: "A1", sender: nil)
    }
    
}
