//
//  Plano.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//
import UIKit
import Foundation


struct Plano {
    
    var aviones: [Avion]

    
    var columnas: Int {
        // Calcula tus columnas
        // Nota> depende de tus aviones y tus coordenadas max y min.
        return MaxX()
    }
    
    var filas: Int {
        // Calcula tus files
        // Nota> depende de tus aviones y tus coordenadas max y min.
        return MaxY()
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
    
    func MaxY() -> Int {
        var MaxFil: Int = -1
        for avion in aviones{
            if MaxFil < avion.y {
                MaxFil = avion.y
            }
        }
        return MaxFil + 1
    }
    
    func MaxX() -> Int {
        var MaxCol: Int = -1
        for avion in aviones{
            if MaxCol < avion.x {
                MaxCol = avion.x
            }
        }
        return MaxCol + 1
    }
    
    
}
