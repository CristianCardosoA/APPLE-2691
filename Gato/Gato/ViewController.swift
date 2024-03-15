//
//  ViewController.swift
//  Gato
//
//  Created by Cristian Cardoso on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var miArreglo = [Int]()
    var tmpIndex = 0
    
    @IBOutlet weak var labelNombre: UILabel!
    
    @IBAction func onTep(_ sender: Any) {
        if tmpIndex < 100 {
            labelNombre.text = "\(miArreglo[tmpIndex])"
            tmpIndex += 1
        } else {
            tmpIndex = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inicializa()
    }
    
    func inicializa() {
        for i in 1...100 {
            miArreglo.append(i)
        }
    }
}

