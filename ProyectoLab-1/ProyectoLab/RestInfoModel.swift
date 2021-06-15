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
    @Published var cdmx = [RestInfo]()
    @Published var guadalajara = [RestInfo]()
    @Published var puebla = [RestInfo]()
    @Published var oaxaca = [RestInfo]()
    
    
    
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
        
        info = RestInfo(name: "Basilico", type: "Italiana", rating: 97 , tel: "8332283702", location: "Tampico", latitude: 22.273104, longitude: -97.8748318, cost: "$$", images: ["Basilico1","Basilico2", "Basilico3"], web: "http://www.basilico.com.mx/")
        tampico.append(info)
        
        info = RestInfo(name: "Ryoshi", type: "Japonesa", rating: 90 , tel: "8119168146", location: "Monterrey", latitude: 25.6503771, longitude: -100.3355411852, cost: "$$$$", images: ["Ryoshi1","Ryoshi2", "Ryoshi3"], web: "https://www.ryoshi.mx")
        monterrey.append(info)
        
        info = RestInfo(name: "La Buena Barra", type: "Carnes y comida Norteña", rating: 80 , tel: "8183385050", location: "Monterrey", latitude: 25.6580064, longitude: -100.3558457852, cost: "$$", images: ["Barra1","Barra2", "Barra3"], web: "https://grupobarra.com")
        monterrey.append(info)
        
        info = RestInfo(name: "Macadam", type: "Brunch", rating: 77 , tel: "8127211051", location: "Monterrey", latitude: 25.6466667, longitude: -100.363022852, cost: "$$", images: ["Macadam1","Macadam2", "Macadam3"], web: "https://m.facebook.com/macadam.mx/")
        monterrey.append(info)
        
        info = RestInfo(name: "Umami Ramen", type: "Ramen", rating: 92 , tel: "8127196095", location: "Monterrey", latitude: 25.6582548, longitude: -100.3600581, cost: "$$", images: ["umami1","umami2", "umami3"], web: "https://www.umamiramen.mx")
        monterrey.append(info)
        
        
        info = RestInfo(name: "Akari", type: "Japonesa", rating: 92 , tel: "6144256868", location: "Chihuahua", latitude: 28.6428558, longitude: -106.13134896634, cost: "$$$", images: ["Akari1","Akari2", "Akari3"], web: "https://www.akari.com.mx")
        chihuahua.append(info)
        
        info = RestInfo(name: "Tacos Orientales", type: "Tacos", rating: 89 , tel: "6144255159", location: "Chihuahua", latitude: 28.6251032, longitude: -106.1015727829, cost: "$$$$", images: ["Orientales1","Orientales2", "Orientales3"], web: "https://www.tacosorientalesdecuernavaca.com/blog")
        chihuahua.append(info)
        
        info = RestInfo(name: "Los Mezquitez", type: "Cortes", rating:87  , tel: "6144116699", location: "Chihuahua", latitude: 28.6288665, longitude: -106.0861198829, cost: "$$$", images: ["Mezquitez1","Mezquitez2", "Mezquitez3"], web: "https://losmezquites.com.mx")
        chihuahua.append(info)
        
        info = RestInfo(name: "La Sotoleria", type: "Bar", rating:92  , tel: "6144100034", location: "Chihuahua", latitude: 28.6355253, longitude: -106.0747548, cost: "$$", images: ["Sotoleria1","Sotoleria2", "Sotoleria3"], web: "https://www.facebook.com/LaSotoleria/")
        chihuahua.append(info)
        
        
        info = RestInfo(name: "Fantino", type: "Mariscos", rating:96  , tel: "9988810808", location: "Cancún", latitude: 21.093215725505985, longitude: -86.76810623210594, cost: "$$$$", images: ["Fantino1","Fantino2", "Fantino3"], web: "https://www.ritzcarlton.com/en/hotels/mexico/cancun/dining/Fantino?scid=bb1a189a-fec3-4d19-a255-54ba596febe2")
        cancun.append(info)
        
        info = RestInfo(name: "Puerto Madero Cancún", type: "Argentina", rating:89  , tel: "9988852829", location: "Cancún",latitude: 21.093445755161547, longitude: -86.77043967073487, cost: "$$$$", images: ["Puerto1","Puerto2", "Puerto3"], web: "https://www.puertomaderorestaurantes.com")
        cancun.append(info)
        
        info = RestInfo(name: "RosaNegra Cancún", type: "Mariscos", rating:84  , tel: "9983134132", location: "Cancún", latitude: 21.08523041202393, longitude: -86.77450741676334, cost: "$$", images: ["Rosa1","Rosa2", "Rosa3"], web: "https://rosanegra.com.mx/es")
        cancun.append(info)
        
        info = RestInfo(name: "Crab House Cancún", type: "Mariscos", rating:90  , tel: "9981930350", location: "Cancún", latitude: 21.0872601, longitude: -86.7736876, cost: "$$$", images: ["Crab1","Crab2", "Crab3"], web: "https://crabhousecancun.com")
        cancun.append(info)
        
        info = RestInfo(name: "Parrilla Urbana", type: "Bar", rating:89  , tel: "5550845112", location: "CDMX", latitude: 19.5247551, longitude: -99.2276401, cost: "$$", images: ["Parrilla1","Parrilla2", "Parrilla3"], web: "http://parrillaurbana.com.mx")
        cdmx.append(info)
        
        info = RestInfo(name: "Café de Tacuba", type: "Mexicano", rating:82  , tel: "525555212048", location: "CDMX", latitude: 19.4357226, longitude: -99.1376571, cost: "$$", images: ["Cafe1","Cafe2", "Cafe3"], web: "http://www.cafedetacuba.info/")
        cdmx.append(info)
        
        info = RestInfo(name: "Primer Cuadro", type: "Mexicano", rating:91  , tel: "5552020639", location: "CDMX", latitude: 19.4323988, longitude: -99.1343477, cost: "$$$", images: ["Cuadro1","Cuadro2", "Cuadro3"], web: "https://primercuadrosteakhouse.rest")
        cdmx.append(info)
        
        info = RestInfo(name: "Azul Historica", type: "Mexicano", rating:96  , tel: "5555101316", location: "CDMX", latitude: 19.4328194, longitude: -99.1360166, cost: "$$$", images: ["Azul1","Azul2", "Azul3"], web: "http://azul.rest/azul-historico/")
        cdmx.append(info)
        
        info = RestInfo(name: "Los Chilaquiles", type: "Mexicano", rating:98  , tel: "3336102623", location: "Guadalajara", latitude: 20.6601333, longitude: -103.3883053, cost: "$$", images: ["Chilaquiles1","Chilaquiles2", "Chilaquiles3"], web: "http://www.loschilaquiles.com/")
        guadalajara.append(info)
        
        info = RestInfo(name: "El Santo Coyote", type: "Mexicano", rating:89  , tel: "3313712943", location: "Guadalajara", latitude: 20.7330903, longitude: -103.4306802, cost: "$$$", images: ["Coyote1","Coyote2", "Coyote3", "Coyote4"], web: "http://www.santocoyote.com.mx/")
        guadalajara.append(info)
        
        info = RestInfo(name: "MUI MUI", type: "Asiatico", rating:95  , tel: "3338173880", location: "Guadalajara", latitude: 20.7010717, longitude: -103.3767194, cost: "$$$", images: ["MUI1","MUI2", "MUI3"], web: "http://www.muimui.mx/")
        guadalajara.append(info)
        
        info = RestInfo(name: "Porfirio's Guadalajara", type: "Mexicano", rating:88  , tel: "3310017728", location: "Guadalajara", latitude: 20.7015912, longitude: -103.3765478, cost: "$$", images: ["Porfirio1","Porfirio2", "Porfirio3"], web: "http://porfirios.com.mx/")
        guadalajara.append(info)
        
        info = RestInfo(name: "Restaurante Tacana", type: "Mexicana Contemporánea", rating:98  , tel: "2222570529", location: "Puebla", latitude:19.04556392555814, longitude: -98.20445455858672 , cost: "$", images: ["Tacana1", "Tacana2", "Tacana3"], web: "https://tacanarestaurante")
        puebla.append(info)
        
        info = RestInfo(name: "El mural de los poblanos", type: "Poblano", rating:95 , tel: "2222420503", location: "Puebla", latitude:19.04236652179121, longitude: -98.19963037383314, cost: "$$", images: ["MuralPob1", "MuralPob2", "MuralPob3"], web: "http://elmuraldelospoblanos.com")
        puebla.append(info)
        
        info = RestInfo(name: "Café del museo Amparo", type: "Café y Snacks", rating:90 , tel: "2222293850", location: "Puebla", latitude:19.041200315913464, longitude:-98.19855259085357, cost: "$", images: ["Amparo1", "Amparo2", "Amparo3"], web: "https://www.museoamparo.com/cafe")
        puebla.append(info)
        
        info = RestInfo(name: "Casareyna", type: "Poblano", rating:99  , tel: "2222320032", location: "Puebla", latitude:19.04217610552923, longitude:-98.19099902970383 , cost: "$$", images: ["Casareyna1", "Casareyna2", "Casareyna3"], web: "https://www.casareyna.com")
        puebla.append(info)
        
        info = RestInfo(name: "Casa Oaxaca El Restaurante", type: "Oaxaqueño", rating:99  , tel: "9515168889", location: "Oaxaca", latitude:17.24109063236473, longitude:-96.63940841974605, cost: "$$$", images: ["Oaxaca1", "Oaxaca2", "Oaxaca3"], web: "https://www.casaoaxacaelrestaurante.com")
        oaxaca.append(info)
        
        info = RestInfo(name: "Ocote Cocina", type: "Mexicano", rating:87  , tel: "9512929554", location: "Oaxaca", latitude:17.06255514697779, longitude:-96.72360194507353, cost: "$$", images: ["Ocote1", "Ocote2", "Ocote3"], web: "https://www.facebook.com/ocotecocina/c")
        oaxaca.append(info)
        
        info = RestInfo(name: "Cocina de Tres", type: "Mexicano", rating:89  , tel: "9511671557", location: "Oaxaca", latitude:17.05870199965738, longitude:-96.72162404692011, cost: "$", images: ["Tres1", "Tres2", "Tres3"], web: "https://www.cocinadetres.mx/menu")
        oaxaca.append(info)
        
        info = RestInfo(name: "Marisquería La Casa del Pirata", type: "Mariscos", rating:83  , tel: "9515161410", location: "Oaxaca", latitude:17.05240354653103, longitude:-96.72296115852038 , cost: "$", images: ["Pirata1", "Pirata2", "Pirata3"], web: "hhttps://www.facebook.com/lacasadelpirata/?rf=290575800959597")
        oaxaca.append(info)
    }
}
