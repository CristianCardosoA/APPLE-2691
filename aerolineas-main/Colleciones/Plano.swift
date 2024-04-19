//
//  Plano.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import Foundation


struct Plano {
    
    var aviones: [Avion]
    
    var columnas: Int {
        // Calcula tus columnas
        // Nota> depende de tus aviones y tus coordenadas max y min.
        return 20
    }
    
    var filas: Int {
        // Calcula tus files
        // Nota> depende de tus aviones y tus coordenadas max y min.
        return 20
    }

    func getAvion(row: Int, section: Int) -> Avion? {
        return aviones.first { avion in
            avion.x == row && avion.y == section
        }
    }
    
    mutating func next() -> Self {
        // Implementa
        aviones.removeAll()
        return self
    }
    
    mutating func back() -> Self {
        // Implementa
        aviones.removeAll()
        return self
    }
}
