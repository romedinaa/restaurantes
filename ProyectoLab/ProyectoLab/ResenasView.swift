//
//  SwiftUIView.swift
//  ProyectoLab
//
//  Created by Brenda Silva Lopez  on 09/05/21.
//

import SwiftUI

struct ResenasView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    
    @StateObject var info: RestInfoModel
    @FetchRequest(
        entity: Resenas.entity(),
    sortDescriptors: [NSSortDescriptor(key: "name", ascending: false)])
    
    var resenas: FetchedResults<Resenas>
    
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Color("Blancos")
                VStack {
                    VStack{
                        Text("Restaurantes")
                            .font(.TinosBold(size: 48))
                            .foregroundColor(Color("Naranjas"))
                            .padding(.top, 100)
                    }
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack (spacing: 0){
                        ForEach(resenas){ res in
                            VStack {
                                
                                    ResenasCellView (res: res)
                                        .frame(height: 200)
                                        .padding(.horizontal, 20 )
                                
                            }
                            .background (Color("Naranjas"))
                            .contextMenu(){
                                Button {
                                    DeleteFromFavorites(res : res)
                                } label: {
                                    HStack{
                                    Text("Borrar")
                                    Image(systemName: "xmark.circle.fill")
                                    }
                                }
                            }
                            
                        }
                    }
                        
                    }
                }
//                VStack{
//                    Spacer()
//                    Button {
//                        SaveToFavorites()
//                    } label: {
//                        Image(systemName: "plus.circle.fill")
//                            .font(.largeTitle)
//                            .foregroundColor(Color("SoothingBreeze"))
//                    }
//                }
//                .padding(.bottom, 100)
                
            }
            
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
    
    func SaveToFavorites() {
        
        
        let res = Resenas(context: viewContext)
        res.id = RestInfo.defaultInfo.id
        res.name = RestInfo.defaultInfo.name
        res.type = RestInfo.defaultInfo.type
        res.rating = RestInfo.defaultInfo.rating
        res.tel = RestInfo.defaultInfo.tel
        res.location = RestInfo.defaultInfo.location
        res.latitude = RestInfo.defaultInfo.latitude
        res.longitude = RestInfo.defaultInfo.longitude
        res.cost = RestInfo.defaultInfo.cost
        res.images = RestInfo.defaultInfo.images
        res.web = RestInfo.defaultInfo.web

        try? viewContext.save()
        
    }
    
    func DeleteFromFavorites (res : Resenas ){
        viewContext.delete(res)
        try? viewContext.save()
    }
}

struct ResenasView_Previews: PreviewProvider {
    static var previews: some View {
        ResenasView(info: RestInfoModel())
    }
}
