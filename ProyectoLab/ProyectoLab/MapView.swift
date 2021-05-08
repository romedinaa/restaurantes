//
//  MapView.swift
//  ProyectoLab
//
//  Created by Juan Cabello on 05/05/21.
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

struct MapView: View {
    // 1.
    let places = [
        Place(name: "Fantino", latitude: 21.093215725505985, longitude: -86.76810623210594),
        Place(name: "Puerto Madero", latitude: 21.093445755161547, longitude: -86.77043967073487),
        Place(name: "Rosa Negra", latitude: 21.08523041202393, longitude: -86.77450741676334)
        
        
        
        
    ]
    
    // 2.
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 21.093215725505985, longitude: -86.76810623210594),
        span: MKCoordinateSpan(latitudeDelta: 0.055, longitudeDelta: 0.055))
    
  
    var body: some View {
        // 3.
        Map(coordinateRegion: $region, annotationItems: places) { place in
            // pin rojo en coordenadas
            MapMarker(coordinate: place.coordinate)
        }
        .ignoresSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
