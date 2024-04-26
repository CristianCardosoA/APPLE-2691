//
//  ViewController.swift
//  Listas
//
//  Created by Facultad de Contaduría y Administración on 17/04/24.
//

import UIKit

class ViewController: UITableViewController {
    

    
    override func tableView(_ tableView: UITableView, numberOrRowsSection section: int) -> int {
        return alumnos.count
    }
        
    override func numberOfSections(in tableView: UITableView) -> Int  {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    if let celda = tableView.dequeueReusableCell(withIdentifier: "miCelda")
        as? Celda
        let alumno = Almacenamiento.alumnos[IndexPath.row]
        celda.titulo
}

    return  UITableViewCell()
}

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath
    )





override func prepare(for segue: UIStoryboardSegue, sender)
