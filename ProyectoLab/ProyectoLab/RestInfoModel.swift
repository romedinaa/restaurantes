//
//  RestInfo.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

class RestInfoModel: ObservableObject {
    
    @Published var tampico = [RestInfo]()
    @Published var monterrey = [RestInfo]()
    @Published var chihuahua = [RestInfo]()
    @Published var cancun = [RestInfo]()
    
    
    
    init() {
        LoadInfo()
    }
    
    func LoadInfo() {
        
        var info: RestInfo
        
        info = RestInfo(name: "Los Curricanes", type: "Mariscos y Cortes", rating: 82 , location: "Tampico", cost: "$$$", images: ["Curricanes1","Curricanes2", "Curricanes3"], web: "http://www.loscurricanes.mx")
        tampico.append(info)
        
        info = RestInfo(name: "Kurai", type: "Japonesa", rating: 78, location: "Tampico", cost: "$$", images: ["Kurai1","Kurai2","Kurai3"], web: "http://www.kuraisushi.com")
        tampico.append(info)
        
        info = RestInfo(name: "Tacos Mary", type: "Tacos", rating: 76 , location: "Tampico", cost: "$", images: ["Mary1","Mary2", "Mary3"], web: "https://www.facebook.com/tacosmarytampico/")
        tampico.append(info)
        
        
        info = RestInfo(name: "Ryoshi", type: "Japonesa", rating: 90 , location: "Monterrey", cost: "$$$$", images: ["Ryoshi1","Ryoshi2", "Ryoshi3"], web: "https://www.ryoshi.mx")
        monterrey.append(info)
        
        info = RestInfo(name: "La Buena Barra", type: "Carnes y comida Norteña", rating: 80 , location: "Monterrey", cost: "$$", images: ["Barra1","Barra2", "Barra3"], web: "https://grupobarra.com")
        monterrey.append(info)
        
        info = RestInfo(name: "Macadam", type: "Brunch", rating: 77 , location: "Monterrey", cost: "$$", images: ["Macadam1","Macadam2", "Macadam3"], web: "https://m.facebook.com/macadam.mx/")
        monterrey.append(info)
        
        
        info = RestInfo(name: "Akari", type: "Japonesa", rating: 92 , location: "Chihuahua", cost: "$$$", images: ["Akari1","Akari2", "Akari3"], web: "https://www.akari.com.mx")
        chihuahua.append(info)
        
        info = RestInfo(name: "Tacos Orientales", type: "Tacos", rating: 89 , location: "Chihuahua", cost: "$$$$", images: ["Orientales1","Orientales2", "Orientales3"], web: "https://www.tacosorientalesdecuernavaca.com/blog")
        chihuahua.append(info)
        
        info = RestInfo(name: "Los Mezquitez", type: "Cortes", rating:87  , location: "Chihuahua", cost: "$$$", images: ["Mezquitez1","Mezquitez2", "Mezquitez3"], web: "https://losmezquites.com.mx")
        chihuahua.append(info)
        
        
        info = RestInfo(name: "Fantino", type: "Mariscos", rating:96  , location: "Cancún", cost: "$$$$", images: ["Fantino1","Fantino2", "Fantino3"], web: "https://www.ritzcarlton.com/en/hotels/mexico/cancun/dining/Fantino?scid=bb1a189a-fec3-4d19-a255-54ba596febe2")
        cancun.append(info)
        
        info = RestInfo(name: "Puerto Madero Cancún", type: "Argentina", rating:89  , location: "Cancún", cost: "$$$$", images: ["Puerto1","Puerto2", "Puerto3"], web: "https://www.puertomaderorestaurantes.com")
        cancun.append(info)
        
        info = RestInfo(name: "RosaNegra Cancún", type: "Mariscos", rating:84  , location: "Cancún", cost: "$$", images: ["Rosa1","Rosa2", "Rosa3"], web: "https://rosanegra.com.mx/es")
        cancun.append(info)
    }
}
