//
//  MiCollectionViewCell.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//


import UIKit
class MiCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imagen: UIImageView!
    
    func style(){
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 2.0
    }
    
    func direccion(avion: Avion){
        switch avion.direccion {
        case .north:
            north()
        case .south:
            south()
        case .east:
            east()
        case .west:
            west()
        }
    }
    
    private func north() {
        imagen.image = UIImage(named: "north")
    }
    
    private func south() {
        imagen.image = UIImage(named: "south")
    }
    
    private func east(){
        imagen.image = UIImage(named: "east")
    }
    
    private func west(){
        imagen.image = UIImage(named: "west")
    }
    
    func none(){
        imagen.image = nil
    }
}
