//
//  Plano.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import Foundation


struct Plano {
    
    //Funciones para calcular el Maximo de columnas y filas
    var numeroPaso = 0
    func maxColumnas() -> Int{
        
        var maxCol = -1
        for avion in aviones{
                        
            if avion.x > maxCol{
                maxCol = avion.x
            }
        }
        return maxCol + 1
    }
    
    func maxFilas()-> Int{
        
        var maxFil = -1
        for avion in aviones{
            
            if avion.y > maxFil{
                maxFil = avion.y
            }
        }
        return maxFil + 1
    }
    //FIN Funciones para calcular el Maximo de columnas y filas
    
    var aviones: [Avion]
    
    var columnas: Int {
        
        return maxColumnas()
    }
    
    
    var filas: Int {
        
        return maxFilas()
    }

    func getAvion(row: Int, section: Int) -> Avion? {
        return aviones.first { avion in
            avion.x == row && avion.y == section
        }
    }
    
    mutating func next() -> Self {
        numeroPaso += 1
        aviones.removeAll()
        return self
        
    }
    
    mutating func back() -> Self {
        
        numeroPaso -= 1
        // Implementa
        // SUR +1
        //norte -1
        //este +1
        //oeste -1
        //diccionario de datos
        
        aviones.removeAll()
        return self
    }
}