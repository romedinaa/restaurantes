//
//  RestaurantView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

struct RestaurantView: View {
    
    @StateObject var rest: RestInfo
    
    var body: some View {
        GeometryReader { geo in
            
            
            ZStack{
                Color(.red)
                VStack{
                    VStack{
                        Text("Restaurante")
                            //.font(.NotoSans(size: 48))
                            .foregroundColor(Color(.red))
                            .padding(.top, 40)
                    }
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                ForEach(rest.restaurante){ restaurante in
                                    NavigationLink(
                                        destination: CellRestView(rest: restaurante),
                                        label: {
                                            CellRestView(rest: restaurante)
                                                .frame(width: geo.size.width)
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
         
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView(rest: RestInfo())
    }
}
