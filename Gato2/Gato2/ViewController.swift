//
//  ViewController.swift
//  Gato2
//
//  Created by Facultad Contaduría y Administración on 20/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var img1: UIImageView!
    
    @IBOutlet var img2: UIImageView!
    
    @IBOutlet var img3: UIImageView!
    
    @IBOutlet var img4: UIImageView!
    
    @IBOutlet var img5: UIImageView!
    
    @IBOutlet var img6: UIImageView!
    
    @IBOutlet var img7: UIImageView!
    
    @IBOutlet var img8: UIImageView!
    
    @IBOutlet var img9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        agregarGestos()
        
    }
    
    func agregarGestos(){
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg1))
        img1.isUserInteractionEnabled = true
        img1.addGestureRecognizer(tap1)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg2))
        img2.isUserInteractionEnabled = true
        img2.addGestureRecognizer(tap2)
        
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg3))
        img3.isUserInteractionEnabled = true
        img3.addGestureRecognizer(tap3)
        
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg4))
        img4.isUserInteractionEnabled = true
        img4.addGestureRecognizer(tap4)
        
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg5))
        img5.isUserInteractionEnabled = true
        img5.addGestureRecognizer(tap5)
        
        let tap6 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg6))
        img6.isUserInteractionEnabled = true
        img6.addGestureRecognizer(tap6)
        
        let tap7 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg7))
        img7.isUserInteractionEnabled = true
        img7.addGestureRecognizer(tap7)
        
        let tap8 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg8))
        img8.isUserInteractionEnabled = true
        img8.addGestureRecognizer(tap8)
        
        let tap9 = UITapGestureRecognizer(target: self, action: #selector(self.tapImg9))
        img9.isUserInteractionEnabled = true
        img9.addGestureRecognizer(tap9)
        
        
    }
 
    @objc func tapImg1(_ sender: UITapGestureRecognizer){
        print("🍤 Click 1")
        img1.image = UIImage(named: "aguila")
    }
    
    @objc func tapImg2(_ sender: UITapGestureRecognizer){
        print("🍤 Click 2")
    }
    
    @objc func tapImg3(_ sender: UITapGestureRecognizer){
        print("🍤 Click 3")
    }
    
    @objc func tapImg4(_ sender: UITapGestureRecognizer){
        print("🍤 Click 4")
    }
    
    @objc func tapImg5(_ sender: UITapGestureRecognizer){
        print("🍤 Click 5")
    }
    
    @objc func tapImg6(_ sender: UITapGestureRecognizer){
        print("🍤 Click 6")
    }
    
    @objc func tapImg7(_ sender: UITapGestureRecognizer){
        print("🍤 Click 7")
    }
    
    @objc func tapImg8(_ sender: UITapGestureRecognizer){
        print("🍤 Click 8")
    }
    
    @objc func tapImg9(_ sender: UITapGestureRecognizer){
        print("🍤 Click 9")
    }
    
}

