//
//  view controller 3.swift
//  navegacion
//
//  Created by Macbook Air 5 on 16/04/24.
//

import Foundation
import UIKit

class ViewController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tresuno(_ sender: Any) {
        
        performSegue(withIdentifier: "tresuno", sender: nil)
    }
}

