//
//  CityView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 16/03/21.
//

import SwiftUI

struct City: Identifiable{
    var id = UUID()
    var cityname: String //nombre de ciudad
    var image: String //icono
}

struct CityView: View {
    
    let modelData: [City] = [
        City(cityname: "Monterrey", image: "cloud.rain"),
        City(cityname: "Chihuahua", image: "cloud.sun.rain"),
        City(cityname: "City1", image: "sun.max"),
        City(cityname: "Tokyo", image: "cloud.sun")]
    
    
    var body: some View {
        NavigationView(){
            // 1.
            List(modelData) { City in
                NavigationLink(destination: Text(City.cityname).font(.largeTitle)){
                    HStack {
                        // 2.
                        Image(systemName: "mappin.and.ellipse")
                            .frame(width: 50, height: 10, alignment: .leading)
                        VStack {
                            Text(City.cityname)
                        }
                    }.font(.title)
                    
                }
            }
            .navigationBarTitle(Text("Ubicación"))
            
        }
    }
}
    struct CityView_Previews: PreviewProvider {
        static var previews: some View {
            CityView()
        }
    }
