//
//  RestView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 17/03/21.
//

import SwiftUI


struct RestView: View {
    
    @StateObject var rest: RestInfoModel
    
    @State var restaurants = [RestInfo]()
    
    var city: String
    
    var body: some View {
        GeometryReader { geo in
            
            
            ZStack{
                Color(.white)
                VStack{
                    VStack{
                        Text(city)
                            //.font(.NotoSans(size: 48))
                            //.foregroundColor(Color(.red))
                            .padding(.top, 40)
                    }
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                ForEach(restaurants){ restaurante in
                                    NavigationLink(
                                        destination: RestDetailView(rest: restaurante),
                                        label: {
//                                            if restaurante.location == city.cityname {
                                            
                                            RestCellView(rest: restaurante)
                                                .frame(width: geo.size.width)
//                                            }
                                        })
                                        
                                  
                                }
                            }
                        }
                    }
                    .padding(.top, -6)
                }
                .padding(.bottom, 100)
            }
            
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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
}

struct RestView_Previews: PreviewProvider {
    static var previews: some View {
        RestView(rest: RestInfoModel(), city: "Monterrey")
    }
}
