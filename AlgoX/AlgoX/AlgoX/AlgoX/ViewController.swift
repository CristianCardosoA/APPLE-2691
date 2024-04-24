//
//  ViewController.swift
//  AlgoX
//
//  Created by Facultad de Contaduría y Administracíon on 12/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            title = "Granja"
}

    @IBAction func Patito(_ sender: Any) {
       if let vc = storyboard?.instantiateViewController(identifier: "patito") as? ViewController2{
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    @IBAction func Perrito(_ sender: Any) {
        if let vc2 = storyboard?.instantiateViewController(identifier: "perrito") as? ViewController3{
            navigationController?.pushViewController(vc2, animated: true)
        }
    }
}

