//
//  RestDetailView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI


struct RestDetailView: View {
    
        var info: Info
        
        var body: some View {
            GeometryReader{ geo in
                VStack{
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack {
                            Text(info.type)
                                //.font(.NotoSans(size: 24))
                                .foregroundColor(Color(.red))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 20)
                                .padding(.top, 6)
                            
                            Text(info.rating)
                                //.font(.NotoSans(size: 20))
                                .foregroundColor(Color(.red))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 20)
                                .padding(.top, 10)
                            
                            NavigationLink(
                                destination: WebView(html: info.web),
                                label: {
                                    Label("Página", systemImage: "play.circle.fill")
                                        //.font(.NotoSans(size: 20))
                                        .foregroundColor(Color(.red))
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 20)
                                        .padding(.top, 10)
                                })
                    
                                
                        }
                        VStack{
                            TabView{
                                ForEach(info.images, id:\.self) {image in
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width-40)
                                        .cornerRadius(40)
                                        .overlay(
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 40)
                                                    .stroke(Color(.red), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                                
                                        
                                            }
                                            
                                        )
                                        .padding(.horizontal,20)
                                        .padding(.vertical, 10)
                                }
                            }
                            .tabViewStyle(PageTabViewStyle())
                        }
                    }
                }
                
                .navigationBarTitle(info.name, displayMode: .inline)
                .navigationBarColor(UIColor(named: "MintLeaf"))
                .toolbar {
                    // Es para poner el título
                    ToolbarItem(placement: .principal) {
                        Text(info.name)
                            //.font(.NotoSans(size: 24))
                            .foregroundColor(Color(.red))
                    }
                }
            }
        }
    }


struct RestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestDetailView(info: Info.defaultInfo)
    }
}
