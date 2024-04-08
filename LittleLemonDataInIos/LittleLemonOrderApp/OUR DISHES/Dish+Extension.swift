import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        //can also use Dish.with(title, context) to create dish if not exists or to update existing dish
        menuItems.forEach { menuItem in
            if let doesExist = Dish.exists(name: menuItem.title, context), !doesExist {
                let dish = Dish(context: context)
                dish.name = menuItem.title
                dish.price = Float(menuItem.price) ?? 0
            }
        }
    }
    
}
