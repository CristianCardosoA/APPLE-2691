//
//  ViewController.swift
//  ExamenPractico
//
//  Created by Facultad Contaduría y Administración on 03/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fibonacciLabel: UILabel!
    
    var fibonacciSeries = [Int: Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func generateFibonacciSeries(upTo n: Int) -> [Int: Int] {
        var series = [Int: Int]()
        if n <= 0 {
            return series
        }
        
        var a = 0, b = 1
        series[1] = a
        if n == 1 {
            return series
        }
        
        series[2] = b
        if n == 2 {
            return series
        }
        
        for i in 3...n {
            let next = a + b
            series[i] = next
            a = b
            b = next
        }
        
        return series
    }
    
    @IBAction func Mostrar(_ sender: UIButton) {
    
        let numberOfTerms = 10
        fibonacciSeries = generateFibonacciSeries(upTo: numberOfTerms)
        fibonacciLabel.text = fibonacciSeries.map { "\($0.value)" }.joined(separator: ", ")
    }
    
    @IBAction func Incrementar(_ sender: UIButton) {
    
        let lastKey = fibonacciSeries.keys.sorted().last ?? 0
        let nextValue = fibonacciSeries[lastKey]! + (fibonacciSeries[lastKey - 1] ?? 0)
        fibonacciSeries[lastKey + 1] = nextValue
        fibonacciLabel.text = fibonacciSeries.map { "\($0.value)" }.joined(separator: ", ")
    }
    
    @IBAction func Decremento(_ sender: UIButton) {
    
        if fibonacciSeries.count > 2 {
            fibonacciSeries.removeValue(forKey: fibonacciSeries.keys.sorted().last!)
            fibonacciLabel.text = fibonacciSeries.map { "\($0.value)" }.joined(separator: ", ")
        }
    }
}

    
    

