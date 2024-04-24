//
//  ViewController.swift
//  Examen
//
//  Created by David Israel Tsutsumi Bernal on 03/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    var fibonacciDictionary: [Int: Int] = [0: 0, 1: 1]
    
    var indiceActual = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultado.text = "\(fibonacciDictionary[0]!)"
    }
    
    
    func fiboSiguiente(){
        let fibonacciNumber = fibonacciDictionary[indiceActual]! + fibonacciDictionary[indiceActual + 1]!
        indiceActual += 1
       
        fibonacciDictionary[indiceActual + 1] = fibonacciNumber
    
        resultado.text = "\(fibonacciNumber)"
    }
    
    func fiboAnterior(){
        if indiceActual > 0 {
            indiceActual -= 1
            resultado.text = "\(fibonacciDictionary[indiceActual]!)"
        }
    }
    
    @IBAction func menos(_ sender: Any) {
        fiboAnterior()
    }
    
    
    @IBAction func mas(_ sender: Any) {
        fiboSiguiente()
    }
    
    @IBOutlet weak var resultado: UILabel!
    
}

