//
//  Analizador.swift
//  Colleciones
//
//  Created by Facultad de Contaduría y Administración on 03/05/24.
//

import Foundation

class Analizador{
    
    static var memoria = [Int: [Avion]]()
    
    public static func next(numPaso: Int, aviones: [Avion]) -> [Avion]{
        
        if let existe = Analizador.memoria[numPaso]{
            return existe
        } else{
            
            var temporal = [Avion]()
            for avion in aviones{
                
                var av = Avion()
                av.direccion = avion.direccion
                av.x = avion.x
                av.y = avion.y
                
                switch avion.direccion {
                    
                case .north:
                    av.y = avion.y - 1
                case .south:
                    av.y = avion.y + 1
                case .east:
                    av.x = avion.x + 1
                case .west:
                    av.x = avion.x - 1
                case .colision:
                    var numColision = 1
                }
                temporal.append(av)
                if temporal.append(av) == temporal.append(av){
            }
                
        
            Analizador.memoria[numPaso] = temporal
            return temporal
        }
    }
    
    public static func back (numPaso: Int, aviones: [Avion]) -> [Avion]{
        if numPaso == 0 {
            return []
            
        } else {
            return next(numPaso: numPaso, aviones: aviones)
        }
    }
        
    
}
