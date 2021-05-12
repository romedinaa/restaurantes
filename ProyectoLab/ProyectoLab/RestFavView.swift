//
//  RestFavView.swift
//  ProyectoLab
//
//  Created by David Cantú Delgado on 11/05/21.
//

import SwiftUI

struct RestFavView: View {
    
    @StateObject var rest: RestInfoModel
    
    @State var restaurants = [RestInfo]()
    
    var city: String
    
    var body: some View {
            
            
                VStack{
                    if city != "Favoritos" {
                        RestView(rest: rest, city: city)
                    } else {
                        ResenasView(restinfo: rest)
                    }
                     
            }
            
            .onAppear{
                switch city {
                case "Monterrey":
                    restaurants = rest.monterrey
                case "Chihuahua":
                    restaurants = rest.chihuahua
                case "Tampico":
                    restaurants = rest.tampico
                case "Cancún":
                    restaurants = rest.cancun
                default: restaurants = rest.monterrey
                    
                }
                //                restaurants = rest.restaurante.filter{$0.location == city.cityname}
            }
    }
            
        
    
}

struct RestFavView_Previews: PreviewProvider {
    static var previews: some View {
        RestView(rest: RestInfoModel(), city: "Monterrey")
    }
}
