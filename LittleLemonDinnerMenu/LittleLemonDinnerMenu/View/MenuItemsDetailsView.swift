//
//  MenuItemsDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import SwiftUI

struct MenuItemsDetailsView: View {
    var item: MenuItem
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title).font(.largeTitle).bold()
            ScrollView {
                VStack {
                    Image("LittleLemonLogo")
                        .resizable()
                        .frame(width: .infinity, height: 500)
                    VStack {
                        Text("Price:").font(.title)
                        Text(String(item.price))
                        Text("Ordered:").font(.title)
                        Text(String(item.ordersCount))
                        Text("Ingredietns:").font(.title)
                        ForEach(item.ingredients, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                }
            }.padding([.leading, .trailing], 40)
        }
    }
}

#Preview {
    MenuItemsDetailsView(item: MenuItem(id: UUID(), title: "preview", category: .food, price: 20, ingredients: [.Broccoli, .Carrot]))
}
