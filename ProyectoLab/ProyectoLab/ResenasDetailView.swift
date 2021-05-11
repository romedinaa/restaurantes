//
//  ResenasDetailView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 09/05/21.
//

import SwiftUI

struct ResenasDetailView: View {
    
    var rest: RestInfoModel
    var res: Resenas
//    @State var posters = [Poster]()
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ResenasDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResenasDetailView(rest: RestInfoModel(), res: Resenas())
    }
}
