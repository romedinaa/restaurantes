//
//  RestInfo.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 15/03/21.
//

import SwiftUI

class RestInfoModel: ObservableObject {
    
    @Published var restaurante = [RestInfo]()
    
    
    
    init() {
        LoadInfo()
    }
    
    func LoadInfo() {
        
        var info: RestInfo
        
        info = RestInfo(name: "McDonals", type: "americano", rating: 45, location: "city", cost: "$", images: ["Office1","Office2", "Office3"], web: "https://youtu.be/kP9TfCWaQT4")
        restaurante.append(info)
        
        info = RestInfo(name: "McDonals", type: "americano", rating: 50 , location: "city", cost: "$", images: ["Office1","Office2", "Office3"], web: "https://youtu.be/kP9TfCWaQT4")
        restaurante.append(info)
        
    
    }
    
}
