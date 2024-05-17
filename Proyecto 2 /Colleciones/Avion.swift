//
//  Avion.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import Foundation
 
struct Avion {
    
    var x: Int
    var y: Int
    var direccion: Direccion
    
    init(x: Int = 0, y: Int = 0, direccion: Direccion = .east) {
        self.x = x
        self.y = y
        self.direccion = direccion
    }
}
