//
//  Plano.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import Foundation


struct Plano {
    
    var numMovimientos = 0
    
    //Funciones para calcular el Maximo de columnas y filas
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
        
        numMovimientos += 1
        
        aviones = Analizador.next(numPaso: numMovimientos, aviones: aviones)
//        aviones.removeAll()
        return self
        
    }
    
    mutating func back() -> Self {
        // Implementa
        guard numMovimientos - 1 > 0 else {
            return self
        }
        numMovimientos -= 1
        aviones = Analizador.back(numPaso: numMovimientos, aviones: aviones)
//        aviones.removeAll()
        return self
    }
    
    func coalicion(aviones:[Avion])-> Int{
         var coalicion = 0
        
        
        
        return coalicion
    }
}

