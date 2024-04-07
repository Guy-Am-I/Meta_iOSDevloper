//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID {get}
    var price: Double {set get}
    var title: String {get}
    var category: MenuCategory {get}
    var ordersCount: Int {set get}
    var ingredients: [Ingredient] {set get}
}

struct MenuItem: MenuItemProtocol, Identifiable {
    var id: UUID
    var title: String
    var category: MenuCategory
    var price: Double
    var ingredients: [Ingredient]
    var ordersCount: Int = 0
        
}
