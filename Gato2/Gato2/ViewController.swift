//
//  ViewController.swift
//  Gato2
//
//  Created by Facultad de Contaduría y Administración on 20/03/24.
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
    
    var esSol = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        agregarGestos()
    }

    func agregarGestos(){
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg1))
        img1.isUserInteractionEnabled = true
        img1.addGestureRecognizer(tap1)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg2))
        img2.isUserInteractionEnabled = true
        img2.addGestureRecognizer(tap2)
        
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg3))
        img3.isUserInteractionEnabled = true
        img3.addGestureRecognizer(tap3)
        
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg4))
        img4.isUserInteractionEnabled = true
        img4.addGestureRecognizer(tap4)
        
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg5))
        img5.isUserInteractionEnabled = true
        img5.addGestureRecognizer(tap5)
        
        let tap6 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg6))
        img6.isUserInteractionEnabled = true
        img6.addGestureRecognizer(tap6)
        
        let tap7 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg7))
        img7.isUserInteractionEnabled = true
        img7.addGestureRecognizer(tap7)
        
        let tap8 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg8))
        img8.isUserInteractionEnabled = true
        img8.addGestureRecognizer(tap8)
        
        let tap9 = UITapGestureRecognizer(target: self, action: #selector(self.tapimg9))
        img9.isUserInteractionEnabled = true
        img9.addGestureRecognizer(tap9)
    }

    @objc func tapimg1(_ sender: UITapGestureRecognizer){
        print("🐶 clic 1")
        img1.image = esSol ? UIImage(named: "mon20pesosC1_Zapata_anv-1") :UIImage(named: "mon20pesosC1_Zapata_anv-1") esSol.toggle()
    }
    
    @objc func tapimg2(_ sender: UITapGestureRecognizer){
        print("🐶 clic 2")

    }
    
    @objc func tapimg3(_ sender: UITapGestureRecognizer){
        print("🐶 clic 3")

    }
    
    @objc func tapimg4(_ sender: UITapGestureRecognizer){
        print("🐶 click 4")
)


    }
    
    @objc func tapimg5(_ sender: UITapGestureRecognizer){
        print("🐶 clic 5")

    }
    
    @objc func tapimg6(_ sender: UITapGestureRecognizer){
        print("🐶 clic 6")

    }
    
    @objc func tapimg7(_ sender: UITapGestureRecognizer){
        print("🐶 clic 7")

    }
    
    @objc func tapimg8(_ sender: UITapGestureRecognizer){
        print("🐶 clic 8")

    }
    
    @objc func tapimg9(_ sender: UITapGestureRecognizer){
        print("🐶 clic 9")

    }
    
    
    
}

