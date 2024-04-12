//
//  ViewController.swift
//  BarraNavegacion
//
//  Created by Facultad Contaduría y Administración on 12/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "patito") as? ViewController2{
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    
    @IBAction func onTap1(_ sender: Any) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "perrito") as? ViewController3{
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
