//
//  ViewController.swift
//  Navegacion1
//
//  Created by Facultad Contaduría y Administración on 10/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any){
        performSegue(withIdentifier: "primerSegue", sender: nil)
    }
    
    @IBAction func BotonA(_ sender: Any) {
        performSegue(withIdentifier: "uno", sender: nil)
    }
    
    @IBAction func BotonB(_ sender: Any) {
        performSegue(withIdentifier: "dos", sender: nil)
    }
    
    @IBAction func BotonC(_ sender: Any) {
        performSegue(withIdentifier: "tres", sender: nil)
    }
    
    @IBAction func BotonD(_ sender: Any) {
        performSegue(withIdentifier: "cuatro", sender: nil)
    }
    
    @IBAction func BotonE(_ sender: Any) {
        performSegue(withIdentifier: "cinco", sender: nil)
    }
    
    @IBAction func BotonA1(_ sender: Any) {
        performSegue(withIdentifier: "seis", sender: nil)
    }
    
    
}

