//
//  RestDetailView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 17/03/21.
//

import SwiftUI

struct RestDetailView: View {
    @State private var showingSheet = false
    
    var rest: RestInfo
    
    var body: some View {
        GeometryReader{ geo in
            VStack{
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text(rest.name)
                            .font(.TinosBold(size: 30))
                            .foregroundColor(Color("Negros"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.top, 15)
                        
                        Text(rest.type)
                            .font(.RalewaySemiBold(size: 17))
                            .foregroundColor(Color("Naranjas"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 5)
                        
                        Text(rest.location)
                            .font(.RalewaySemiBold(size: 20))
                            .foregroundColor(Color("Negros"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 5)
                        
                        Text("" + rest.cost)
                            .font(.RalewaySemiBold(size: 20))
                            .foregroundColor(Color("Negros"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 5)
                        
                        
                        NavigationLink(
                            destination: WebView(html: rest.web),
                            label: {
                                Label("Sitio Web", systemImage: "play.circle.fill")
                                    .font(.TinosBold(size: 20))
                                    .foregroundColor(Color("Naranjas"))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 20)
                                    .padding(.top, 10)
                            })
                    }
                    
                    VStack{
                        
                        ScrollView(.horizontal,showsIndicators: false)
                        {
                            HStack{
                                ForEach(rest.images, id:\.self) {image in
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width-40)
                                        .cornerRadius(40)
                                        .overlay(
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 40)
                                                    .stroke(Color("Naranjas"), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                            }
                                        )
                                        .padding(.horizontal,20)
                                        .padding(.vertical, 10)
                                }
                            }
                            
                        }
                    }
                    
                    Button(action: {
                        self.showingSheet = true
                    }) {
                        
                        Label("Llamar", systemImage: "phone" )
                            .font(.TinosBold(size: 25))
                            .foregroundColor(Color("Negros"))
                        
                    }
                    .padding(.top, 30)
                    .actionSheet(isPresented: $showingSheet) {
                        ActionSheet(title: Text("Llamar"),
                                    buttons: [
                                        .default(Text(rest.tel) )
                                        , .cancel()
                                    ])
                    }
                    
                    
                    VStack {
                        NavigationLink(
                            destination: MapView(places: CityPlaces()),
                            label: {
                                Label("Location", systemImage: "mappin.and.ellipse")
                                    .font(.TinosBold(size: 30))
                                    .foregroundColor(Color("Negros"))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 20)
                                    .padding(.top,30)
                            })
                    }
                    
                }
            }
            
            .navigationBarTitle(rest.name, displayMode: .inline)
            .navigationBarColor(UIColor(named: "MintLeaf"))
            .toolbar {
                // Es para poner el título
                ToolbarItem(placement: .principal) {
                    Text("bienvenido a: ")
                        .font(.TinosRegular(size: 24))
                        .foregroundColor(Color("Negros"))
                }
            }
        }
    }
    
    func CityPlaces() -> [Place] {
        
        switch rest.location {
        case "Monterrey":
            return Place.monterrey
        case "Cancún":
            return Place.cancun
        case "Chihuahua":
            return Place.chihuahua
        case "Tampico":
            return Place.tampico
        
        default:
            return Place.cancun
        }
        
    }
}

struct RestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestDetailView(rest: RestInfo.defaultInfo)
    }
}
