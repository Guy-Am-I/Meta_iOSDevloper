//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import SwiftUI

enum categories: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}
enum sortingOptions: String, CaseIterable {
    case popularity = "Most Popular"
    case price = "Price $-$$$"
    case alphabetically = "A-Z"
}


struct MenuItemsOptionView: View {
    @Binding var isPresented: Bool
        
    var body: some View {
        NavigationView {
            Form {
                Section("Selected Categories") {
                    List {
                        ForEach(categories.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                }
                Section("Sort By") {
                    List {
                        ForEach(sortingOptions.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                }
            }
            .navigationTitle("Filter")
            .toolbar {
                ToolbarItem (){ Button(
                    action: {isPresented = false},
                    label: {Text("Done")})
                }
            }
        }
    }
}

#Preview {
    MenuItemsOptionView(isPresented: .constant(true))
}
