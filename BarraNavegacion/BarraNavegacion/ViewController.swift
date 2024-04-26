//
//  ViewController.swift
//  BarraNavegacion
//
//  Created by Facultad de Contaduría y Administración on 12/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "pollito") as? ViewController2 {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

