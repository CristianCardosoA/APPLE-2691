//
//  ViewController.swift
//  barraNavegacion
//
//  Created by David Israel Tsutsumi Bernal on 12/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func boton(_ sender: Any) {
        
        if let vc = self.storyboard?.instantiateViewController(identifier: "patito") as? ViewController2 {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    @IBAction func boton2(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(identifier: "pollo") as? ViewController3 {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

