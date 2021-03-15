//
//  CellRestView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

struct CellRestView: View {
    
    var info: Info
    
    var body: some View {
        GeometryReader{ geo in
            VStack{
                ZStack{
                    VStack{
                        Image(info.images[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width-40)
                            .cornerRadius(40)
                            .overlay(
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color("OrangeVille"), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                                                    }
                                
                            )
                            .padding(.horizontal,20)
                            .padding(.top, 10)
                    }
                    
                }
                VStack{
                    HStack{
                        Text(info.name)
                            //.font(.NotoSans(size: 24))
                        Text("(\(String(info.type)))")
                            //.font(.NotoSans(size: 20))
                        Text(info.cost)
                            //.font(.NotoSans(size: 20))
                        Spacer()
                    }
                    
                    
                    .padding(.top, 40)
                    HStack{
                        Text(info.location)
                            //.font(.NotoSans(size: 20))
                            
                        Spacer()
                    }
                }
                .foregroundColor(Color("OrangeVille"))
                .padding(.leading,20)
            }
        }
    }
}


struct CellRestView_Previews: PreviewProvider {
    static var previews: some View {
        CellRestView(info: Info.defaultInfo)
    }
}
