//
//  RestInfo.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

class RestInfo: ObservableObject {
    
    @Published var restaurante = [Info]()
    
    
    
    init() {
        LoadInfo()
    }
    
    func LoadInfo() {
        
        var restDetail: Info
        
        restDetail = Info(name: "McDonals", location: "cancun", type: "comida rapida", cost: "$$$", rating: "4/5", images: ["Office1","Office2", "Office3"], web: "https://youtu.be/kP9TfCWaQT4")
        restaurante.append(restDetail)
        restDetail = Info(name: "McDonals", location: "cancun", type: "comida rapida", cost: "$$$", rating: "4/5", images: ["Office4", "Office5", "Office6"], web: "https://youtu.be/kP9TfCWaQT4")
        restaurante.append(restDetail)
        
    
    }
    
}
