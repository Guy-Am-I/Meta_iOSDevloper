import Foundation

struct JSONMenu: Codable {
    var menuItemsDecoded: [MenuItem]
}


struct MenuItem: Codable, Identifiable {
    let id = UUID()
    var title: String
    var price: Double = 0
}
