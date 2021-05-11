////
////  AddToResenasView.swift
////  ProyectoLab
////
////  Created by Roberta Medina on 09/05/21.
////

import SwiftUI

struct AddToResenasView: View {

    @Environment(\.managedObjectContext) var viewContext

    var fetchRequest: FetchRequest<Resenas>
    var resenas: FetchedResults<Resenas> {
        fetchRequest.wrappedValue
    }

    var rest: RestInfo
    var isMovie: Bool

    var body: some View {
        VStack {
            if resenas.count == 0 {
                Button(action: {
                    self.SaveRestToFav(rest: rest, isMovie: isMovie)
                }) {
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                        .font(.system(size: 40))
                }
            } else {
                Button(action: {
                    self.DeleteRestFromFav(rest: rest)
                }) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 40))
                }
            }
        }
    }

    init(rest: RestInfo, isMovie: Bool) {
        self.rest = rest
        self.isMovie = isMovie
        fetchRequest = FetchRequest<Resenas>(entity: Resenas.entity(), sortDescriptors: [],
                                             predicate: NSPredicate(format: "id == %@", NSNumber(nonretainedObject: rest.id)))
    }

    func SaveRestToFav(rest: RestInfo, isMovie: Bool) {
        let r = Resenas(context: viewContext)
        r.id = rest.id
        r.name = rest.name
        r.type = rest.type
        r.rating = rest.rating
        r.tel = rest.tel
        r.location = rest.location
        r.latitude = rest.latitude
        r.longitude = rest.longitude
        r.cost = rest.cost
        r.images = rest.images
        r.web = rest.web

        try? viewContext.save()

    }

    func DeleteRestFromFav(rest: RestInfo) {
        if let index = resenas.firstIndex(where: {$0.id == rest.id}) {
            viewContext.delete(resenas[index])
            try? viewContext.save()
        }
    }

}

struct AddToFavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        AddToResenasView(rest: RestInfo.defaultInfo, isMovie: true)
    }
}
