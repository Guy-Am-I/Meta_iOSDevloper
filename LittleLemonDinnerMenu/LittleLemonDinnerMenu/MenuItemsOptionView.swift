//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import SwiftUI

struct MenuItemsOptionView: View {
    let categories = ["Food", "Drink", "Dessert"]
    let sortingOptions = ["Most Popular", "Price $-$$$", "A-Z"]
    
    var body: some View {
        NavigationView {
            Form {
                Section("Selected Categories") {
                    List {
                        ForEach(categories, id: \.self) {
                            Text($0)
                        }
                    }
                }
                Section("Sort By") {
                    List {
                        ForEach(sortingOptions, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            .navigationTitle("Filter")
            .toolbar {
                ToolbarItem (){ Button(
                    action: {},
                    label: {Text("Done")})
                }
            }
        }
    }
}

#Preview {
    MenuItemsOptionView()
}
