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
        
        info = RestInfo(name: "Los Curricanes", type: "Mariscos y Cortes", rating: 82 , tel: "8332131053", location: "Tampico", latitude: 22.2508123, longitude: -97.87004226996, cost: "$$$", images: ["Curricanes1","Curricanes2", "Curricanes3"], web: "http://www.loscurricanes.mx")
        tampico.append(info)
        
        info = RestInfo(name: "Kurai", type: "Japonesa", rating: 78, tel: "8332241717", location: "Tampico", latitude: 22.257033, longitude: -97.8769721874, cost: "$$", images: ["Kurai1","Kurai2","Kurai3"], web: "http://www.kuraisushi.com")
        tampico.append(info)
        
        info = RestInfo(name: "Tacos Mary", type: "Tacos", rating: 76 , tel: "8332122574", location: "Tampico", latitude: 22.2412967, longitude: -97.8657773875, cost: "$", images: ["Mary1","Mary2", "Mary3"], web: "https://www.facebook.com/tacosmarytampico/")
        tampico.append(info)
        
        
        info = RestInfo(name: "Ryoshi", type: "Japonesa", rating: 90 , tel: "8119168146", location: "Monterrey", latitude: 25.6503771, longitude: -100.3355411852, cost: "$$$$", images: ["Ryoshi1","Ryoshi2", "Ryoshi3"], web: "https://www.ryoshi.mx")
        monterrey.append(info)
        
        info = RestInfo(name: "La Buena Barra", type: "Carnes y comida Norteña", rating: 80 , tel: "8183385050", location: "Monterrey", latitude: 25.6580064, longitude: -100.3558457852, cost: "$$", images: ["Barra1","Barra2", "Barra3"], web: "https://grupobarra.com")
        monterrey.append(info)
        
        info = RestInfo(name: "Macadam", type: "Brunch", rating: 77 , tel: "8127211051", location: "Monterrey", latitude: 25.6466667, longitude: -100.363022852, cost: "$$", images: ["Macadam1","Macadam2", "Macadam3"], web: "https://m.facebook.com/macadam.mx/")
        monterrey.append(info)
        
        
        info = RestInfo(name: "Akari", type: "Japonesa", rating: 92 , tel: "6144256868", location: "Chihuahua", latitude: 28.6428558, longitude: -106.13134896634, cost: "$$$", images: ["Akari1","Akari2", "Akari3"], web: "https://www.akari.com.mx")
        chihuahua.append(info)
        
        info = RestInfo(name: "Tacos Orientales", type: "Tacos", rating: 89 , tel: "6144255159", location: "Chihuahua", latitude: 28.6251032, longitude: -106.1015727829, cost: "$$$$", images: ["Orientales1","Orientales2", "Orientales3"], web: "https://www.tacosorientalesdecuernavaca.com/blog")
        chihuahua.append(info)
        
        info = RestInfo(name: "Los Mezquitez", type: "Cortes", rating:87  , tel: "6144116699", location: "Chihuahua", latitude: 28.6288665, longitude: -106.0861198829, cost: "$$$", images: ["Mezquitez1","Mezquitez2", "Mezquitez3"], web: "https://losmezquites.com.mx")
        chihuahua.append(info)
        
        
        info = RestInfo(name: "Fantino", type: "Mariscos", rating:96  , tel: "9988810808", location: "Cancún", latitude: 21.093215725505985, longitude: -86.76810623210594, cost: "$$$$", images: ["Fantino1","Fantino2", "Fantino3"], web: "https://www.ritzcarlton.com/en/hotels/mexico/cancun/dining/Fantino?scid=bb1a189a-fec3-4d19-a255-54ba596febe2")
        cancun.append(info)
        
        info = RestInfo(name: "Puerto Madero Cancún", type: "Argentina", rating:89  , tel: "9988852829", location: "Cancún",latitude: 21.093445755161547, longitude: -86.77043967073487, cost: "$$$$", images: ["Puerto1","Puerto2", "Puerto3"], web: "https://www.puertomaderorestaurantes.com")
        cancun.append(info)
        
        info = RestInfo(name: "RosaNegra Cancún", type: "Mariscos", rating:84  , tel: "9983134132", location: "Cancún", latitude: 21.08523041202393, longitude: -86.77450741676334, cost: "$$", images: ["Rosa1","Rosa2", "Rosa3"], web: "https://rosanegra.com.mx/es")
        cancun.append(info)
    }
}
