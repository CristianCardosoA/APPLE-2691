//
//  ViewController2.swift
//  Navegacion
//
//  Created by Facultad de Contaduría y Administración on 12/04/24.
//

import Foundation
import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func onTap(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(identifier: "tortuga") as? ViewController2{
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

