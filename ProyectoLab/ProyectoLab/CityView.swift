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
    
    @StateObject var rest: RestInfoModel
    
    let modelData: [City] = [
        City(cityname: "Monterrey", image: "flame"),
        City(cityname: "Chihuahua", image: "star"),
        City(cityname: "City1", image: "sun.max"),
        City(cityname: "Tokyo", image: "cloud.sun")]
    
    
    var body: some View {
        NavigationView(){
            // 1.
            List(modelData) { City in
                //dentro de navication link hay que hacer que destination vaya a RestView (vista del restaurante)
                NavigationLink(destination: RestView(rest: info)){
                    HStack {
                        // 2.
                        Image(systemName: City.image)
                            .frame(width: 50, height: 10, alignment: .leading)
                        VStack {
                            Text(City.cityname)
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding()
                                
                        }
                    }.font(.title)
                    
                }
                .ignoresSafeArea(.all)
            }
            .navigationBarTitle(Text("Ubicación"))
            
            
        }
        
        
        
    }
}
    struct CityView_Previews: PreviewProvider {
        static var previews: some View {
            CityView(rest: RestInfoModel())
        }
    }
