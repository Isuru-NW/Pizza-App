//
//  Pizza.swift
//  PizzaApplication
//
//  Created by user215958 on 5/22/22.
//

import Foundation

/// ENSURE THE NAMES OF THE OBJECT ARE EQUAL TO THE JSON KEY NAMES
//struct Pizza: Decodable {
//    var name: String
//    var ingredients: String
//    var imageName: String
//    var thumbnailName: String
//    var type: PizzaType
//}

enum PizzaType: String, Decodable {
    case vegetarian = "vegetarian"
    case meat = "meat"
}
