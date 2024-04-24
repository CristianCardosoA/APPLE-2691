//
//  Plano.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import Foundation


struct Plano {
    
    var aviones: [Avion]
    
    func maximoX() -> Int{
        
        var maxCol = -1
        for avion in aviones {
            
            if avion.x < maxCol{
                maxCol = avion.x
            }
        }
        return maxCol + 1
    }
    
    
    func maximoY() -> Int{
        var maxFil = -1
        
        for avion in aviones{
            if avion.y < maxFil{
                maxFil = avion.y
            }
        }
         return maxFil + 1
    }
    
    
    var columnas: Int {
       
        return maximoX()
        
    }
    
    var filas: Int {
       
        return maximoY()
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
