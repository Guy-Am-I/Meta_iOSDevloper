import Foundation

struct JSONMenu: Codable {
    let menu: [MenuItem]
    
    enum CodingKeys: String, CodingKey {
        case menu = "menu"
    }
}


struct MenuItem: Codable, Identifiable {
    let id = UUID()
    var title: String
    var price: Float = 0
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case price = "price"
    }
}
