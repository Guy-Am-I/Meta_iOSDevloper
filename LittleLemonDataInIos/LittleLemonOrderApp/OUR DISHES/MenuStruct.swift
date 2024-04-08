import Foundation

struct JSONMenu: Codable {
    let menu: [MenuItem]
    
    enum CodingKeys: String, CodingKey {
        case menu = "menu"
    }
}


struct MenuItem: Codable, Identifiable {
    let id = UUID()
    //var id: Int
    var title: String
    var price: String
    
    enum CodingKeys: String, CodingKey {
//        case id = "id"
        case title = "title"
        case price = "price"
    }
}
