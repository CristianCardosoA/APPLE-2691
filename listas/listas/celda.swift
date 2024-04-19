//
//  celda.swift
//  listas
//
//  Created by Macbook Air 5 on 17/04/24.
//

import Foundation
import UIKit

class Celda : UITableViewCell{
    required init ?(coder: NSCoder){
        super.init(coder: coder)
    }
    @IBOutlet weak var titulo: UILabel!
    
    
}
