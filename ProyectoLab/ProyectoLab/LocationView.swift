//
//  ContentView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        List{
            Section(header:
                        Text("Ciudades")
                        .font(Font.largeTitle.bold())
                        .foregroundColor(Color(.brown))
                        .frame(height: 80)
                    
                    , content: {
                   
                        NavigationLink(
                            destination: RestaurantView(),
                            label: {
                                VStack{
                                    Text("Monterrey")
                                        .font(.largeTitle)
                                        .foregroundColor(.red)
                                        .padding()
                                }
                                
                            })
                
                    })
            
           
        }
        .listStyle(PlainListStyle())
}
    

}
struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
