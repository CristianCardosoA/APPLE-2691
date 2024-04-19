//
//  ViewController.swift
//  listas
//
//  Created by Macbook Air 5 on 17/04/24.
//

import UIKit

class ViewController: UITableViewController{
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Almacenamiento.alumnos.count
    }
    
    override func numberOfSection(in tableView : UITableView)-> Int{
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let celda = tableView.dequeueReusableCell(withIdentifier: "miCelda") as? Celda{
            let alumno = Almacenamiento.alumnos[indexPath.row]
            celda.titulo.text = "\(alumno.nombre)\(alumno.apellido)"
            return celda
            
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "detalle", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.identifier == "detalle"{
            if let segue.destination as? ViewControllerDetalle{
                vc.index = index
            
                
            }
        }
        <#code#>
    }

}
