//
//  MapView.swift
//  ProyectoLab
//
//  Created by Juan Cabello on 05/05/21.
//

import SwiftUI
import MapKit



struct MapView: View {
    // 1.
    var places: [Place]
    
    // 2.
    @State var region = MKCoordinateRegion()
    
  
    var body: some View {
        // 3.
        Map(coordinateRegion: $region, annotationItems: places) { place in
            // pin rojo en coordenadas
            MapMarker(coordinate: place.coordinate)
        }
        .onAppear {
            region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: places[0].latitude, longitude: places[0].longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.055, longitudeDelta: 0.055))
        }
        .ignoresSafeArea(.all)
    }
    
}
    

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(places: Place.cancun)
    }
}
