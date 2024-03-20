//
//  ViewController.swift
//  Gato
//
//  Created by Facultad de Contaduría y Administración on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
   
    var arrayNum = [Int] (repeating: 0, count: 100)
    var tempI = 0
    
    func iteracion(){
        for i in 1...100{
            
            //Usando .insert
            arrayNum.insert(i, at: i-1)
            
            //Usando .append
            //arrayNum.append(i)
            
        }
    }
    
    @IBAction func onTap(_ sender: Any) {
        //labelNombre.text = "No Android"
        if tempI < 100 {
            labelNombre.text = "\(arrayNum[tempI])"
            tempI += 1
        }
    }
    
    @IBOutlet weak var labelNombre: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //labelNombre.text = "Aarón Swift"
        iteracion()
    }


}

