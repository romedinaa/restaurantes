//
//  Resenas+CoreDataProperties.swift
//  ProyectoLab
//
//  Created by Juan Cabello on 11/06/21.
//
//

import Foundation
import CoreData


extension Resenas {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Resenas> {
        return NSFetchRequest<Resenas>(entityName: "Resenas")
    }

    @NSManaged public var cost: String?
    @NSManaged public var id: UUID?
    @NSManaged public var images: NSObject?
    @NSManaged public var latitude: Double
    @NSManaged public var location: String?
    @NSManaged public var longitude: Double
    @NSManaged public var name: String?
    @NSManaged public var rating: Double
    @NSManaged public var tel: String?
    @NSManaged public var type: String?
    @NSManaged public var web: String?
    
    var type_wrapped: String {
        type ?? " " }
    var name_wrapped: String {
        name ?? " " }
    var cost_wrapped: String {
        cost ?? " " }
    var location_wrapped: String {
        location ?? " " }
    
    
    var web_wrapped: String {
        web ?? " " }
    var city_wrapped: String {
        location ?? " " }
    var tel_wrapped: String {
        tel ?? " " }
}

extension Resenas : Identifiable {

}
