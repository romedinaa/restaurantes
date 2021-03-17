//
//  RestView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 17/03/21.
//

import SwiftUI


struct RestView: View {
    
    @StateObject var rest: RestInfoModel
    
    var body: some View {
        GeometryReader { geo in
            
            
            ZStack{
                Color(.white)
                VStack{
                    VStack{
                        Text("Rest")
                            //.font(.NotoSans(size: 48))
                            //.foregroundColor(Color(.red))
                            .padding(.top, 40)
                    }
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                ForEach(rest.restaurante){ restaurante in
                                    NavigationLink(
                                        destination: RestDetailView(rest: restaurante),
                                        label: {
                                            RestCellView(rest: restaurante)
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

struct RestView_Previews: PreviewProvider {
    static var previews: some View {
        RestView(rest: RestInfoModel())
    }
}
