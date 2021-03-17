//
//  RestDetailView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 17/03/21.
//

import SwiftUI

struct RestDetailView: View {
    
    var rest: RestInfo
    
    var body: some View {
        GeometryReader{ geo in
            VStack{
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        Text(rest.name)
                            //.font(.NotoSans(size: 24))
                            //.foregroundColor(Color("OrangeVille"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 6)
                        
                        Text(rest.type)
                            //.font(.NotoSans(size: 20))
                            //.foregroundColor(Color("OrangeVille"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                        
                        Text(rest.location)
                            //.font(.NotoSans(size: 20))
                            //.foregroundColor(Color("OrangeVille"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                        
                        Text(rest.cost)
                            //.font(.NotoSans(size: 20))
                            //.foregroundColor(Color("OrangeVille"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)

                        
                        NavigationLink(
                            destination: WebView(html: rest.web),
                            label: {
                                Label("Sitio Webw", systemImage: "play.circle.fill")
                                    //.font(.NotoSans(size: 20))
                                    //.foregroundColor(Color("OrangeVille"))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 20)
                                    .padding(.top, 10)
                            })
                
                            
                    }
                    VStack{
                        TabView{
                            ForEach(rest.images, id:\.self) {image in
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
            
            .navigationBarTitle(rest.name, displayMode: .inline)
            .navigationBarColor(UIColor(named: "MintLeaf"))
            .toolbar {
                // Es para poner el título
                ToolbarItem(placement: .principal) {
                    Text(rest.name)
                        //.font(.NotoSans(size: 24))
                        .foregroundColor(Color("OrangeVille"))
                }
            }
        }
    }
}

struct RestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestDetailView(rest: RestInfo.defaultInfo)
    }
}
