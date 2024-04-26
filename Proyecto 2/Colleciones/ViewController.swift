//
//  ViewController.swift
//  Colleciones
//
//  Created by Cristian Cardoso on 18/04/24.
//  Modified by Antonio A. Hernández

import UIKit
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collection: UICollectionView!
    
    let reuseIdentifier = "miCelda"
    // Seleccionar la planificacion de ruta de la aerolinea de su preferencia
    
    var planificador = Planificador(aviones: Aeromexico.aviones)
//    var planificador = Planificador(aviones: AmericanAirlines.aviones)

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: reuseIdentifier,
            for: indexPath as IndexPath
        ) as! MiCollectionViewCell
        
        if let avion = planificador.plano.getAvion(row: indexPath.row, section: indexPath.section) {
            cell.direccion(avion: avion)
        } else {
            cell.none()
        }
        cell.style()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planificador.plano.columnas
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return planificador.plano.filas
    }
    
    @IBAction func tapBack(_ sender: Any) {
        
        coaliciones.text = "Coaliciones: 999"
       
        
        planificador.back()
        movimientos.text = "Pasos: \(planificador.plano.numeroPaso)"
        collection.reloadData()
    }
    
    @IBAction func tapNext(_ sender: Any) {
        
        coaliciones.text = "Coaliciones: 999"
    
        planificador.next()
        movimientos.text = "Pasos: \(planificador.plano.numeroPaso)"
        collection.reloadData()
    }
    
    @IBAction func tapReset(_ sender: Any) {
    }
    
    @IBOutlet weak var movimientos: UILabel!
    @IBOutlet weak var coaliciones: UILabel!
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size.width / CGFloat(planificador.plano.columnas)
        return CGSize(width: size, height: size)
    }
}
