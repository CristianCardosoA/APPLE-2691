//
//  ViewController.swift
//  listas
//
//  Created by David Israel Tsutsumi Bernal on 17/04/24.
//

import UIKit

class ViewController: UITableViewController {
    
   
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Almacenamiento.alumnos.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let celda = tableView.dequeueReusableCell(withIdentifier: "miCelda")
            as? Celda {
            let alumno = Almacenamiento.alumnos[indexPath.row]
            index = indexPath.row
            celda.titulo.text = "\(alumno.nombre) \(alumno.apellido) 😍"
            return celda
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detalle", sender: nil)
        index = indexPath.row
        shouldPerformSegue(withIdentifier: "detalle", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalle" {
            if let vc = segue.destination as? ViewControllerDetalle {
                let alumno = Almacenamiento.alumnos[index]
                vc.index = index
            }
        }
    }

}

