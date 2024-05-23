//
//  ViewController.swift
//  ProyectoLocalizacion3
//
//  Created by Cristian Cardoso on 22/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clicka(_ sender: Any) {
        
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "patito") as? ViewController2 {
            present(vc, animated: true)
        }
    }
    
}

