//
//  MenuItemTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Guy Steinberg on 06/04/2024.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class MenuItemTests: XCTestCase {
    
    func testMenuItemTitle() {
        let myTitle = "testingMenuItem"
        var testingMenuItem = MenuItem(id: UUID(), title: myTitle, category: MenuCategory.food, price: 0, ingredients: [])
        
        XCTAssertEqual(myTitle, testingMenuItem.title)
    }
    
    func testMenuItemIngredients() {
        let testIngredients = [Ingredient.Broccoli, Ingredient.Carrot, Ingredient.Pasta]
        var testingMenuItem = MenuItem(id: UUID(), title: "testing", category: MenuCategory.food, price: 0, ingredients: testIngredients)
        
        XCTAssertTrue(testIngredients.elementsEqual(testingMenuItem.ingredients))
    }

}
