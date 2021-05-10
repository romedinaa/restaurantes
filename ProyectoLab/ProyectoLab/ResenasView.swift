//
//  SwiftUIView.swift
//  ProyectoLab
//
//  Created by Brenda Silva Lopez  on 09/05/21.
//

import SwiftUI

struct SwiftUIView: View {
    
   // @StateObject var media:
    @Environment(\.managedObjectContext) var viewContext
    
    @StateObject var rest: RestInfoModel
    @FetchRequest(
        entity: Resenas.entity(),
    sortDescriptors: [NSSortDescriptor(key: "date", ascending: false)]
    )
    var resenas: FetchedResults<Resenas>
    
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Color("SourLemon")
                VStack {
                    VStack{
                        Text("Restaurantes")
                            .font(.TinosBold(size: 48))
                            .foregroundColor(Color("Naranja"))
                            .padding(.top, 40)
                    }
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack (spacing: 0){
                        ForEach(resenas){ res in
                            VStack {
                                NavigationLink(destination: ResenasDetailView (rest: rest, res:res),
                                label: {
                                    ResenasCellView (res: res )
                                        .frame(height: 200)
                                        .padding(.horizontal, 20 )
                                })
                            }
                            .background (
                                Color("Naranja"  )
                            )
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
        
        let fav = Resenas(context: viewContext)
        fav.id = Int32(Video.defaultVideo.id)
        fav.title = Video.defaultVideo.title
        fav.overview = Video.defaultVideo.overview
        for genre in Video.defaultVideo.genre_ids {
            fav.genre_ids.append(Int32(genre))
        }
        fav.poster_path = Video.defaultVideo.poster_path
        fav.release_date = Video.defaultVideo.release_date
        fav.vote_average = Video.defaultVideo.vote_average
        fav.is_movie = true
        try? viewContext.save()
        
    }
    
    func DeleteFromFavorites (fav : Resenas ){
        viewContext.delete(fav)
        try? viewContext.save()
    }
}

struct ResenasView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(media: MediaModel())
    }
}
