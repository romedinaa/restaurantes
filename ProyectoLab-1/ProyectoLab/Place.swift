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
        Place(name: "Rosa Negra", latitude: 21.08523041202393, longitude: -86.77450741676334),
        Place(name: "Crab House Cancún", latitude: 21.0872601, longitude: -86.7736876)
    ]
    
    public static let monterrey = [
        Place(name: "Ryoshi", latitude: 25.6503771, longitude: -100.3355411852),
        Place(name: "La Buena Barra", latitude: 25.6580064, longitude: -100.3558457852),
        Place(name: "Macadam", latitude: 25.6466667, longitude: -100.363022852),
        Place(name: "Umami Ramen", latitude: 25.6582548, longitude: -100.3600581)
    ]
    
    public static let chihuahua = [
        Place(name: "Akari", latitude: 28.6428558, longitude: -106.13134896634),
        Place(name: "Tacos Orientales", latitude: 28.6251032, longitude: -106.1015727829),
        Place(name: "Los Mezquitez", latitude: 28.6288665, longitude: -106.0861198829),
        Place(name: "La Sotoleria", latitude: 28.6355253, longitude: -106.0747548)
    ]
    
    public static let tampico = [
        Place(name: "Los Curricanes", latitude: 22.2508123, longitude: -97.87004226996),
        Place(name: "Kurai", latitude: 22.257033, longitude: -97.8769721874),
        Place(name: "Tacos Mary", latitude: 22.2412967, longitude: -97.8657773875),
        Place(name: "Basilico", latitude: 22.273104, longitude: -97.8748318)
    ]
    
    public static let cdmx = [
        Place(name: "La Parrilla Urbana", latitude: 19.5247551, longitude: -99.2276401),
        Place(name: "Café de Tacuba", latitude: 19.4357226, longitude: -99.1376571),
        Place(name: "Primer Cuadro", latitude: 19.4323988, longitude: -99.1343477),
        Place(name: "Azul Historico", latitude: 19.4328194, longitude: -99.1360166)
    ]
    
    public static let guadalajara = [
        Place(name: "Los Chilaquiles", latitude: 20.6601333, longitude: -103.3883053),
        Place(name: "Santo Coyote", latitude: 20.7330903, longitude: -103.4306802),
        Place(name: "MUI MUI", latitude: 20.7010717, longitude: -103.3767194),
        Place(name: "Porfirio's Guadalajara", latitude: 20.7015912, longitude: -103.3765478)
    ]
    
    public static let puebla = [
        Place(name: "Restaurante Tacana", latitude:19.04556392555814, longitude: -98.20445455858672),
        Place(name: "El mural de los poblanos", latitude:19.04236652179121, longitude: -98.19963037383314),
        Place(name: "Café del museo Amparo", latitude:19.041200315913464, longitude:-98.19855259085357),
        Place(name: "Casareyna", latitude:19.04217610552923, longitude:-98.19099902970383)
    ]
    
    public static let oaxaca = [
        Place(name: "Casa Oaxaxa El Restaurante", latitude:17.24109063236473, longitude:-96.63940841974605),
        Place(name: "Ococte Cocina", latitude:17.06255514697779, longitude:-96.72360194507353),
        Place(name: "Cocina de Tres", latitude:17.05870199965738, longitude:-96.72162404692011),
        Place(name: "Marisquería La Casa del Pirata", latitude:17.05240354653103, longitude:-96.72296115852038)
    ]
    
}
