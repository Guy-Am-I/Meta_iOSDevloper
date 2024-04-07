//
//  MenuItemsDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import SwiftUI

struct MenuItemsDetailsView: View {
    let itemInfo = ["Price", "Ordered", "Ingredients"]
    var body: some View {
        ScrollView {
            VStack {
                Image("LittleLemonLogo")
                    .resizable()
                    .frame(width: 250, height: 500, alignment: .top)
                ScrollView {
                    ForEach(itemInfo, id: \.self) {
                        Text($0)
                    }
                }
            }
            .padding([.leading, .trailing], 40)
        }
        .navigationTitle("Food Name")
    }
}

#Preview {
    MenuItemsDetailsView()
}
