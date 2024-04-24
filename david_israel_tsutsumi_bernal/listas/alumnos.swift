//
//  alumnos.swift
//  listas
//
//  Created by David Israel Tsutsumi Bernal on 17/04/24.
//

import Foundation


struct Alumno {
    var nombre: String
    var apellido: String
}

struct Almacenamiento {
    
    static let alumnos = [
        Alumno(nombre: "Pedro", apellido: "Sanchez"),
        Alumno(nombre: "Juan", apellido: "Sanchez"),
        Alumno(nombre: "Jose", apellido: "Sanchez"),
        Alumno(nombre: "Pepe", apellido: "Sanchez"),
        Alumno(nombre: "Mario", apellido: "Sanchez")
    ]
}
