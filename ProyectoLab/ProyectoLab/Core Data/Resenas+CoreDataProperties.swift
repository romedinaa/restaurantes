//
//  Resenas+CoreDataProperties.swift
//  ProyectoLab
//
//  Created by Brenda Silva Lopez  on 09/05/21.
//
//

import Foundation
import CoreData


extension Resenas {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Resenas> {
        return NSFetchRequest<Resenas>(entityName: "Resenas")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var rating: Double
    @NSManaged public var type: String?
    @NSManaged public var name: String?
    @NSManaged public var cost: String?
    @NSManaged public var location: String?
    @NSManaged public var longitude: Double
    @NSManaged public var latitude: Double
    @NSManaged public var images: [String]
    @NSManaged public var web: String?
    @NSManaged public var city: String?
    @NSManaged public var tel: String?

    var type_wrapped: String {
        type ?? " " }
    var name_wrapped: String {
        name ?? " " }
    var cost_wrapped: String {
        cost ?? " " }
    var location_wrapped: String {
        location ?? " " }
    
    //var images_wrapped: [String] { // No se si agregar el arreglo de Strings
    //images ?? " " }
    
    var web_wrapped: String {
        web ?? " " }
    var city_wrapped: String {
        city ?? " " }
    var tel_wrapped: String {
        tel ?? " " }
}

extension Resenas : Identifiable {

}
