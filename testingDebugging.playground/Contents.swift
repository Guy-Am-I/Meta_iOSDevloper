import UIKit

enum MenuCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum Ingredient: String {
    case Spinach = "Spinach"
    case Broccoli = "Broccoli"
    case Carrot = "Carrot"
    case Pasta = "Pasta"
    case TomatoSauce = "TomatoSauce"
}

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
    
    init(id: UUID, price: Double) {
        self.id = id
        self.title = ""
        self.category = MenuCategory.food
        self.price = price
        self.ingredients = []
    }
}


class ModelViewViewModel {
    var foodMenuItems: [MenuItem]
    var drinkMenuItems: [MenuItem]
    var dessertMenuItems: [MenuItem]
    
    init() {
        foodMenuItems = (1..<13).map {num in
//            MenuItem(id: UUID(), title: "FoodItem", category: MenuCategory.food, price: 0.0 + num, ingredients: [])
            MenuItem(id: UUID(), price: Double(num))
        }
        drinkMenuItems = []
        dessertMenuItems = []
    }
}
