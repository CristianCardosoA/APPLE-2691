//
//  celda.swift
//  Listas2
//
//  Created by Facultad de Contaduría y Administracíon on 17/04/24.
//

import Foundation
import UIKit

class celda: UITableViewCell{
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @IBOutlet weak var titulo: UILabel!
    
    
}
