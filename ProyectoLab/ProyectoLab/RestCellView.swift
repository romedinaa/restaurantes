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
                                        .stroke(Color(.yellow), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    
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
                            .padding(.top, 10)
                    }
                    
                }
                VStack{
                    HStack{
                        Text(rest.name)
                            //.font(.NotoSans(size: 24))
                        Text("(\(String(rest.type)))")
                            //.font(.NotoSans(size: 20))
                        Text(rest.cost)
                            //.font(.NotoSans(size: 20))
                        Spacer()
                    }
                    
                    
                    .padding(.top, 40)
                    //aqui iria una descripción del restaurante
//                    HStack{
//                        Text(rest.name)
//                            //.font(.NotoSans(size: 20))
//
//                        Spacer()
//                    }
                }
                .foregroundColor(Color(.red))
                .padding(.leading,20)
            }
        }
    }
}

struct RestCellView_Previews: PreviewProvider {
    static var previews: some View {
        RestCellView(rest: RestInfo.defaultInfo)
    }
}
