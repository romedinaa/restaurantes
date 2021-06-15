//
//  ResenasCellView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 09/05/21.
//

import SwiftUI
//import Kingfisher

struct ResenasCellView: View {
    
    var res: Resenas
    
    var body: some View {
        GeometryReader { geo in
            
                HStack {
                            ScoreView(rating: res.rating * 10)
                                .scaleEffect(1.2)
                    
                    VStack (alignment: .center, spacing: 10){
                                Text(res.name_wrapped)
                                    .font(.TinosBold(size: 24))
                                    .multilineTextAlignment(.center)
                                Text("(\(String(res.type_wrapped)))")
                                    .font(.TinosBold(size: 20))
                                    .multilineTextAlignment(.center)
                                Text(res.location_wrapped)
                                    .font(.TinosBold(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                
                            
                    }.padding(.horizontal, 40)
                    .padding(.top, 30)
                        
                        .foregroundColor(Color("Negros"))
                 
                } .padding(.horizontal, 10)
                .padding(.top, 30)
                
            
        }
    }
}

struct FavoriteCellView_Previews: PreviewProvider {
    static var previews: some View {
        ResenasCellView(res: Resenas())
    }
}
