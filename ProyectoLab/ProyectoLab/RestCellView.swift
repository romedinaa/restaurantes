//
//  RestCellView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 17/03/21.
//

import SwiftUI

struct RestCellView: View {
    
    var rest: RestInfo
    
    var body: some View {
        GeometryReader{ geo in
            VStack{
                ZStack{
                    VStack{
                        Image(rest.images[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width-40)
                            .cornerRadius(40)
                            .overlay(
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color("Naranjas"), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    
                                    VStack{
                                        Spacer()
                                        HStack{
                                            ScoreView(rating: rest.rating)
                                            Spacer()
                                        }
                                        .padding(.leading, 40)
                                        .padding(.bottom, -35)
                                    }
                                }
                                
                            )
                            .padding(.horizontal,20)
                            .padding(.top, 30)
                    }
                    
                }
                VStack{
                    HStack{
                        Text(rest.name)
                            .font(.RalewaySemiBold(size: 25))
                    }
                    .padding(.top, 50)
                    
                    //aqui iria una descripción del restaurante
                    HStack{
                        Text((String(rest.type)))
                            
                            .font(.RalewayBold(size: 15))
                    }
                    .padding(.leading, 2)
                }
                .font(.RalewayBold(size: 5))
                .foregroundColor(Color("Negros"))
                .padding(.leading,10)
                .padding(.trailing,150)
            }
        }
    }
}

struct RestCellView_Previews: PreviewProvider {
    static var previews: some View {
        RestCellView(rest: RestInfo.defaultInfo)
    }
}
