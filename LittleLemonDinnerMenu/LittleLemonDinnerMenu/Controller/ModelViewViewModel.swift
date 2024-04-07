//
//  ModelViewViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import Foundation


class ModelViewViewModel {
    var foodMenuItems: [MenuItem]
    var drinkMenuItems: [MenuItem]
    var dessertMenuItems: [MenuItem]
    
    init() {
        foodMenuItems = (1..<13).map {
            MenuItem(id: UUID(), title: "Food \($0)", category: MenuCategory.food, price: Double($0), ingredients: [])
        }
        drinkMenuItems = (1..<9).map {
            MenuItem(id: UUID(), title: "Drink \($0)", category: MenuCategory.drink, price: Double($0)*2, ingredients: [])
        }
        dessertMenuItems = (1..<5).map {
            MenuItem(id: UUID(), title: "Dessert \($0)", category: MenuCategory.dessert, price: Double($0)*5, ingredients: [])
        }
    }
}
