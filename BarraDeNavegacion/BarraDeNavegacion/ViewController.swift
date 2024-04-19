//
//  ViewController.swift
//  BarraDeNavegacion
//
//  Created by Macbook Air 5 on 17/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func vc2(_ sender: Any) {
    }
    @IBAction func VC2(_ sender: Any) {
        if let vc2 = storyboard?.instantiateViewController(identifier: "vc2")as? ViewController2{
            navigationController?.pushViewController(vc2 , animated:true)
        }
    }
    

}

