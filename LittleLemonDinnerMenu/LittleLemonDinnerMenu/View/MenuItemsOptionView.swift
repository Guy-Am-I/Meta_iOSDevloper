//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import SwiftUI


enum SortingOptions: String, CaseIterable {
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
                        ForEach(MenuCategory.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                }
                Section("Sort By") {
                    List {
                        ForEach(SortingOptions.allCases, id: \.self) {
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
