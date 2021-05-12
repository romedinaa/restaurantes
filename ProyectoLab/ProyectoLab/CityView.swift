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
    
    @StateObject var rest = RestInfoModel()
    @State var isPopoverPresented = false
    
    let modelData: [City] = [
        City(cityname: "Monterrey", image: "flame"),
        City(cityname: "Chihuahua", image: "sun.dust"),
        City(cityname: "Cancún", image: "sun.max"),
        City(cityname: "Tampico", image: "sun.haze"),
        City(cityname: "Favoritos", image: "star.fill")]
    
    
    
    
    
    var body: some View {
        NavigationView(){
            
            ZStack{
                VStack {
                    List(modelData) { city in
                        
                        NavigationLink(
                            destination:
                                
                                RestFavView(rest: rest, city: city.cityname)) {
                            HStack {
                                
                                Image(systemName: city.image)
                                    .foregroundColor(Color(city.image == "star.fill" ? "Favoritos": "Naranjas"))
                                    .frame(width: 50, height: 10)
                                
                                VStack {
                                    
                                    Text(city.cityname)
//                                        .foregroundColor(Color("Naranjas"))
                                        .foregroundColor(Color(city.cityname == "Favoritos" ? "Favoritos": "Negros"))
                                        .font(.TinosBold(size: 35))
                                        .padding()
                                    
                                }
                            }.font(.largeTitle)
                            
                        
                        }
                        .ignoresSafeArea(.all)
                        
                        
                    }
                    
                    .navigationBarTitle(Text("Ubicación"))
                }
                
                
                VStack{
                    Button(action: {
                        self.isPopoverPresented = true
                    }) {
                        Text("Instrucciones")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 300, height: 100, alignment: .center)
      
                    }
                    .frame(width: 200.0, height: 60.0)
                    // 3.
                    .popover(isPresented: $isPopoverPresented) {
                        Text("Bienvenido! Por favor seleccione la ciudad de la cual desea conocer los restaurantes. Una pantalla se abrirá mostrando los restaurantes disponibles en la ubicación seleccionada. Seleccionado el restaurante de su preferencia, se mostraran más detalles de éste. ")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                            .frame(width: 350, height: 500)
                    }
                    .border(Color("Naranjas"), width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                    .background(Color("Naranjas"))
                    .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 500)
            }
        }
        
    }
}
struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView(rest: RestInfoModel())
    }
}
