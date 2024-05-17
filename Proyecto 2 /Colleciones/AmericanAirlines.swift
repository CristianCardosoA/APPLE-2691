//
//  AmericanAirlines.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import Foundation

struct AmericanAirlines {
    
    private init() {    }
    
    //Nota> todos los dias, cada 15 minutos cambia las rutas de los vuelos.
    static let aviones = [
        Avion(x: 0, y: 0, direccion: .east),
        Avion(x: 0, y: 4, direccion: .west)
    ]
}
