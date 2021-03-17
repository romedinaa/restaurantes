//
//  Info.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

struct RestInfo: Identifiable{
    var id = UUID()
    var name: String        //nombre restaurante
    var type: String        // tipo de comida
    var rating: String      //"4.5" **ver como cambiarlo para que sean icons
    
    var location: String    //ubicación restaurante
    var cost: String        //escrito asi = "$$$"
    var images: [String]    //array de imagened
    var web: String         // url al sitio web
}


/*
 en vista carrusel solo se mostrara:
 1. nombre del restaurante (name)
 2. tipo de comida (type)
 3. calificación (rating)
 
 
 En vista detallada --> después de picarle a un restaurante
 1. nombre del restaurante (name)
 2. type
 3. location
 4. costo (cost)
 5. images (carrusel de imagenes)
 6. web (link al sitio web)
 
 */
