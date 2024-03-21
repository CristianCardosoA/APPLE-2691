//
//  ViewController.swift
//  Gato
//
//  Created by Macbook Air 5 on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var myArray = [Int](repeating: 0, count: 100)
    var tmpIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        inicializa()
        
    }

    @IBOutlet weak var labelNombre: UILabel!
    @IBAction func tap(_ sender: Any) {
        
        if tmpIndex < 100{
            labelNombre.text = "\(myArray[tmpIndex]")
            tmpIndex += 1
        }else{
            tmpIndex = 0
        }
    }
    
overridefunc viewDidload(){
super,viewDidLoad()
}
    func inicializa (){
        for i in 1 ... 100{
            myArray.append(i)
        }
    }
    

