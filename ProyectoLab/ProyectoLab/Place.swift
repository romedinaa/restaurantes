//
//  Place.swift
//  ProyectoLab
//
//  Created by David Cantú Delgado on 10/05/21.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

extension Place {
    
    public static let cancun = [
        Place(name: "Fantino", latitude: 21.093215725505985, longitude: -86.76810623210594),
        Place(name: "Puerto Madero", latitude: 21.093445755161547, longitude: -86.77043967073487),
        Place(name: "Rosa Negra", latitude: 21.08523041202393, longitude: -86.77450741676334)
    ]
    
    public static let monterrey = [
        Place(name: "Ryoshi", latitude: 25.6503771, longitude: -100.3355411852),
        Place(name: "La Buena Barra", latitude: 25.6580064, longitude: -100.3558457852),
        Place(name: "Macadam", latitude: 25.6466667, longitude: -100.363022852)
    ]
    
    public static let chihuahua = [
        Place(name: "Akari", latitude: 28.6428558, longitude: -106.13134896634),
        Place(name: "Tacos Orientales", latitude: 28.6251032, longitude: -106.1015727829),
        Place(name: "Los Mezquitez", latitude: 28.6288665, longitude: -106.0861198829)
    ]
    
    public static let tampico = [
        Place(name: "Los Curricanes", latitude: 22.2508123, longitude: -97.87004226996),
        Place(name: "Kurai", latitude: 22.257033, longitude: -97.8769721874),
        Place(name: "Tacos Mary", latitude: 22.2412967, longitude: -97.8657773875)
    ]
    
}
