//
//  viewControllerDetalle.swift
//  listas
//
//  Created by David Israel Tsutsumi Bernal on 17/04/24.
//

import Foundation
import UIKit

class ViewControllerDetalle: UIViewController{
    
    var index = 0
    
    @IBOutlet weak var tituloDetalle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let alumno = Almacenamiento.alumnos[index]
        tituloDetalle.text = "\(alumno.nombre) \(alumno.apellido) 😍"
    }
}
