//
//  ListsViewModel.swift
//  Lists
//
//  Created by Vigneshwar Devendran on 15/10/24.
//

import Foundation

class ListsViewModel {
    
    static func fetchLists() -> [List] {
        let list1 = List(name: "House", items: [
            "Stove",
            "Chimney",
            "Fridge",
            "Washer & Dryer",
            "Couch Set",
            "Ottomons",
            "Coffee Table",
            "TV",
            "Internet",
            "Xbox",
            "Bed Frame",
            "Mattress",
            "Carpets",
            "Pillows and Bedsheets",
            "Work Table",
            "Work Chair",
            "Monitor",
            "Keyboard",
            "Mouse",
            "Laptop"
        ])
        let list2 = List(name: "Personel", items: [
            "Phone",
            "A dozen work clothes",
            "A dozen night clothes",
            "A dozen underwear",
            "A dozen socks",
            "Four Shoes",
            "Car",
            "Carryon Bag",
            "Suitcase"
        ])
        let list3 = List(name: "Shopping", items: [
            "Cereals",
            "Bread",
            "Cheese Slice",
            "Salami",
            "Bacon",
            "Pasta",
            "Tuna",
            "Whole Chicken",
            "Steak"
        ])
        return [list1, list2, list3]
    }
}
