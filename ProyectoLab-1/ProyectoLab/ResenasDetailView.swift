//
//  ResenasDetailView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 09/05/21.
//

import SwiftUI

struct ResenasDetailView: View {
    
    
    
    
    var rest: RestInfo
    var resta: RestInfoModel
    //var fav: Resenas
    @State var restaurants = [RestInfo]()
    
    @State private var showingSheet = false
    
    
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
                    
                    .padding(.top, 30)
                    
                    
                }
            }
            
            .navigationBarTitle(rest.name, displayMode: .inline)
            .navigationBarColor(UIColor(named: "MintLeaf"))
            .toolbar {
                // Es para poner el t??tulo
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
        case "Canc??n":
            return Place.cancun
        case "Chihuahua":
            return Place.chihuahua
        case "Tampico":
            return Place.tampico
        case "CDMX":
            return Place.cdmx
        case "Guadalajara":
            return Place.guadalajara
        case "Puebla":
            return Place.puebla
        case "Oaxaca":
            return Place.oaxaca
        //
        default:
            return Place.cancun
        }
        
    }
}


struct ResenasDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResenasDetailView( rest: RestInfo.defaultInfo, resta: RestInfoModel.init())
    }
}

