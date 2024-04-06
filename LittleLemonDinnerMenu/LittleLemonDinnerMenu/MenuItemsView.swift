//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import SwiftUI

struct MenuItemsView: View {
    let columns = [
        GridItem(.flexible(minimum: 80), spacing: 10),
        GridItem(.flexible(minimum: 80), spacing: 10),
        GridItem(.flexible(minimum: 80), spacing: 10)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0x1f600...0x1f679, id: \.self) { value in
                        GroupBox {
                            Text(emoji(value))
                                .font(.largeTitle)
                                .fixedSize()
                            Text(String(format: "%x", value))
                                .fixedSize()
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem (){ Button(
                    action:{},
                    label: { Image(systemName: "slider.horizontal.3") })
                }
            }
        }
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
    
}

#Preview {
    MenuItemsView()
}
