//
//  celda.swift
//  listas
//
//  Created by David Israel Tsutsumi Bernal on 17/04/24.
//

import Foundation
import UIKit

class Celda: UITableViewCell {
    
    
    @IBOutlet weak var titulo: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
