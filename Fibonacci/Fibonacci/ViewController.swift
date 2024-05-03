//
//  ViewController.swift
//  Fibonacci
//
//  Created by Facultad de Contaduría y Administración on 03/04/24.
//

import UIKit

class ViewController: UIViewController {

    
    func fibonacci(num: Int ) -> Int{
        if (num == 0){
            return 0
        }
        else if (num == 1){
            return 1
        }
        
        return fibonacci(num: -1) + fibonacci(num: -2)
        
    }
        
}

print(fibonacci(x: 7))
