//
//  ProyectoLabApp.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

@main

struct ProyectoLabApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            CityView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                
        }
    }
}
