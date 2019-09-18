//
//  ViewController.swift
//  Pelicula
//
//  Created by Alumno on 9/18/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var peliculas : [Pelicula] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "It", director: "Director 1", año: 1992))
        peliculas.append(Pelicula(titulo: "Kill Bill", director: "Quentin Tarantino", año: 1990))
        peliculas.append(Pelicula(titulo:"kk", director: "asdad", año: 2000 ))
    }
  
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as?
        CeldaPeliculaController
        
        celda?.lblPelicula.text = peliculas[indexPath.row].titulo
        celda?.lblDirector.text = peliculas[indexPath.row].director
        celda?.lblAño.text = "\(peliculas[indexPath.row].año)"
        
        
         return celda!
    }
    

        
    
    
}

