//
//  ViewController.swift
//  navegacion
//
//  Created by Macbook Air 5 on 16/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        performSegue(withIdentifier: "uno", sender: nil)
    }
    
    @IBAction func dos(_ sender: Any) {
        performSegue(withIdentifier: "dos", sender: nil)
    }
    
    @IBAction func tres(_ sender: Any) {
        performSegue(withIdentifier: "tres", sender: nil)
    }
    
    @IBAction func cuatro(_ sender: Any) {
        performSegue(withIdentifier: "cuatro", sender: nil)
    }
    
    @IBAction func cinco(_ sender: Any) {
        performSegue(withIdentifier: "cinco", sender: nil)
    }
    
    @IBAction func seis(_ sender: Any) {
        performSegue(withIdentifier: "seis", sender: nil)
    }
    
    
}

