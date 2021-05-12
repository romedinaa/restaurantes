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
            VStack {
                HStack {
//                    KFImage(URL(string: fav.poster_path_wrapped)!)
//                        .placeholder {
//                            ProgressView()
//                        }
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 120, height: 180)
//                        .cornerRadius(20)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 20)
//                                .stroke(Color("SourLemon"), style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
//                        )
//                    Spacer()
                    VStack {
                        Text(res.name_wrapped)
                            .font(.TinosBold(size: 24))
                            .multilineTextAlignment(.center)
                        Text("(\(String(res.type_wrapped)))")
                            .font(.TinosBold(size: 20))
                            .multilineTextAlignment(.center)
                        ScoreView(rating: res.rating * 10)
                            .scaleEffect(0.8)

                    }
                    .foregroundColor(Color("Naranjas"))
                    Spacer()
                }
                .padding(.vertical, 10)

            }
        }
    }
}

struct FavoriteCellView_Previews: PreviewProvider {
    static var previews: some View {
        ResenasCellView(res: Resenas())
    }
}
