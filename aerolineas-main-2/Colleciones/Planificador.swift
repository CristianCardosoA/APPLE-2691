//
//  Generador.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//

import Foundation

struct Planificador {
    
    var plano: Plano
    
    init(aviones: [Avion]){
        plano = Plano(aviones: aviones)
    }
    
    mutating func next() {
        plano = plano.next()
    }
    
    mutating func back() {
        plano = plano.back()
    }
}
