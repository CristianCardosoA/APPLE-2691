//
//  ViewController.swift
//  Gato2
//
//  Created by Facultad de Contaduría y Administracíon on 20/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    
    var isSol = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agregarGestos()
        // Do any additional setup after loading the view.
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
        img1.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
    }
    
    @objc func tapImg2(_ sender: UITapGestureRecognizer){
        img2.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
        
    }
    
    @objc func tapImg3(_ sender: UITapGestureRecognizer){
        img3.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
    }
    @objc func tapImg4(_ sender: UITapGestureRecognizer){
        img4.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
    }


    @objc func tapImg5(_ sender: UITapGestureRecognizer){
        img5.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
    
}

    @objc func tapImg6(_ sender: UITapGestureRecognizer){
        img6.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
    
}

    @objc func tapImg7(_ sender: UITapGestureRecognizer){
        img7.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
}
    
    @objc func tapImg8(_ sender: UITapGestureRecognizer){
        img8.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
        
    }
    
    @objc func tapImg9(_ sender: UITapGestureRecognizer){
        img9.image = isSol ? UIImage (named: "sol") :UIImage(named: "aguila")
        isSol.toggle()
        
        
    }

}

