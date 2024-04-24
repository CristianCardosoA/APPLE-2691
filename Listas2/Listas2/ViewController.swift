//
//  ViewController.swift
//  Listas2
//
//  Created by Facultad de Contaduría y Administracíon on 17/04/24.
//

import UIKit

class ViewController: UITableViewController {
    
    var index = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Almacenamiento.alumnos.count
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let celda =
        tableView.dequeueReusableCell(withIdentifier: "miCelda") as? celda{
            let alumno = alumnos[indexPath.row]
            celda.titulo.text = "\(alumno.nombre) \(alumno.apellido)"
            return celda
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "detalle", sender: nil)
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            if segue.identifier == "detalle"{
                if let vc = segue.destination as? ViewControllerDetalle{
                let alumno = alumnos[index]
                    vc.tituloDetalle.text = "\(alumno.nombre) \(alumno.apellido)"
            }
                
        }
    }

