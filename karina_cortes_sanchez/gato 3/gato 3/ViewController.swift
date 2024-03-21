//
//  ViewController.swift
//  gato 3
//
//  Created by Macbook Air 5 on 20/03/24.
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
    
        
    override func viewDidLoad(){
        super.viewDidLoad()
        agregarGestos()
    }
    
    var isSol = false
        
    func agregarGestos(){
        let tap1 = UITapGestureRecognizer(target: self, action:#selector(self.tapIm1))
        img1.isUserInteractionEnabled =true
        img1.addGestureRecognizer(tap)
        
        let tap2 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg2))
        img2.isUserInteractionEnabled = true
        img2.addGestureRecognizer(tap)
        
        let tap3 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg3))
        img3.isUserInteractionEnabled
        img3.addGestureRecognizer(tap)
        
        let tap4 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg4))
        img4.isUserInteractionEnabled = true
        img4.addGestureRecognizer(tap)
        
        let tap5 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg5)
        img5.isUserInteractionEnabled = true
        img5.addGestureRecognizer(tap)
        
        let tap6 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg6)
        img6.isUserInteractionEnabled = true
        img6.addGestureRecognizer(tap)
        
        let tap7 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg7))
        img7.isUserInteractionEnabled = true
        img7.addGestureRecognizer(tap)
        
        let tap8 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg8))
        img8.isUserInteractionEnabled = true
        img8.addGestureRecognizer(tap)
        
        let tap9 = UITapGestureRecognizer(target: self, action:#selector(self.tapImg9))
        img9.isUserInteractionEnabled = true
        img9.addGestureRecognizer(tap)
    }
            
            
        
        
    func tapImg1(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }
    func tapImg2(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }
    func tapImg3(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }

    func tapImg4(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }
    func tapImg5(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }
    func tapImg6(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }
    func tapImg7(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }

    func tapImg8(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }
    func tapImg9(_ sender: UITapGestureRecognizer{
            img1.image = isSol ? UIImage(named:"sol"): UIImage(named: "aguila")
            isSol.toggle()
    }
