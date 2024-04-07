//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Guy Steinberg on 06/04/2024.
//

import SwiftUI

struct MenuItemsView: View {
    let model = ModelViewViewModel()
    let columns = [
        GridItem(.flexible(minimum: 80)),
        GridItem(.flexible(minimum: 80)),
        GridItem(.flexible(minimum: 80))
    ]
    @State var filterActive: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Food").font(.title)
                    LazyVGrid(columns: columns) {
                        ForEach(model.foodMenuItems) { food in
                            NavigationLink(destination: MenuItemsDetailsView(item: food)) {
                                VStack {
                                    Rectangle()
                                        .fill(.black)
                                        .frame(width:100, height:100, alignment: .leading)
                                    Text(food.title)
                                        .fixedSize()
                                }
                            }
                        }
                    }
                    Text("Drinks").font(.title)
                    LazyVGrid(columns: columns) {
                        ForEach(model.drinkMenuItems) { drink in
                            NavigationLink(destination: MenuItemsDetailsView(item: drink)) {
                                VStack {
                                    Rectangle()
                                        .fill(.black)
                                        .frame(width:100, height:100, alignment: .leading)
                                    Text(drink.title)
                                        .fixedSize()
                                }
                            }
                        }
                    }
                    Text("Dessert").font(.title)
                    LazyVGrid(columns: columns) {
                        ForEach(model.dessertMenuItems) { dessert in
                            NavigationLink(destination: MenuItemsDetailsView(item: dessert)) {
                                VStack {
                                    Rectangle()
                                        .fill(.black)
                                        .frame(width:100, height:100, alignment: .leading)
                                    Text(dessert.title)
                                        .fixedSize()
                                }
                            }
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem () {
                    Button(
                        action: {filterActive = true},
                        label: { Image(systemName: "slider.horizontal.3") }
                    )
                }
            }
            .sheet(isPresented: $filterActive, content: {
                MenuItemsOptionView(isPresented: $filterActive)
            })
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
