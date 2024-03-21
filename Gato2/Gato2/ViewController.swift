//
//  ViewController.swift
//  Gato2
//
//  Created by Antonio Aaron Hernandez Cabrera on 20/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var img5: UIImageView!
    
    @IBOutlet weak var img6: UIImageView!
    
    @IBOutlet weak var img7: UIImageView!
    
    @IBOutlet weak var img8: UIImageView!
    
    @IBOutlet weak var img9: UIImageView!
    
    var isSol = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
    //@obj: Funcion que va a recibir un Complicion handler
    @objc func tapImg1(_ sender: UITapGestureRecognizer){
        print("🕸️Click 1")
        img1.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg2(_ sender: UITapGestureRecognizer){
        print("🕸️Click 2")
        img2.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg3(_ sender: UITapGestureRecognizer){
        print("🕸️Click 3")
        img3.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg4(_ sender: UITapGestureRecognizer){
        print("🕸️Click 4")
        img4.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg5(_ sender: UITapGestureRecognizer){
        print("🕸️Click 5")
        img5.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg6(_ sender: UITapGestureRecognizer){
        print("🕸️Click 6")
        img6.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg7(_ sender: UITapGestureRecognizer){
        print("🕸️Click 7")
        img7.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg8(_ sender: UITapGestureRecognizer){
        print("🕸️Click 8")
        img8.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
    @objc func tapImg9(_ sender: UITapGestureRecognizer){
        print("🕸️Click 9")
        img9.image = isSol ? UIImage(named: "aguila"):UIImage(named: "cara")
        isSol.toggle()
    }
}

