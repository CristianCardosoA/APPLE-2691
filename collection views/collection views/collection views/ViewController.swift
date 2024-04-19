//
//  ViewController.swift
//  collection views
//
//  Created by Macbook Air 5 on 19/04/24.
//

import UIKit
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let reuseIdentifier = "miCelda"
// Nota: el identificador debe ser ingresado en el storyboard, en el apartado de “Identificador”
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27","28","29","30","31","32"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MiCollectionViewCell
        cell.Titulo.text = self.items[indexPath.row]
        cell.backgroundColor = UIColor.cyan
        return cell
    }
        // MARK: - UICollectionViewDelegate protocol
    
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
            print("Seleccionaste la celda #\(indexPath.item)!")
        }
    }
