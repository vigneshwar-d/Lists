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
            ListItem(name:"Stove"),
            ListItem(name:"Chimney"),
            ListItem(name:"Fridge"),
            ListItem(name:"Washer & Dryer"),
            ListItem(name:"Couch Set"),
            ListItem(name:"Ottomons"),
            ListItem(name:"Coffee Table"),
            ListItem(name:"TV"),
            ListItem(name:"Internet"),
            ListItem(name:"Xbox"),
            ListItem(name:"Bed Frame"),
            ListItem(name:"Mattress"),
            ListItem(name:"Carpets"),
            ListItem(name:"Pillows and Bedsheets"),
            ListItem(name:"Work Table"),
            ListItem(name:"Work Chair"),
            ListItem(name:"Monitor"),
            ListItem(name:"Keyboard"),
            ListItem(name:"Mouse"),
            ListItem(name:"Laptop")
        ])
        let list2 = List(name: "Personel", items: [
            ListItem(name:"Phone"),
            ListItem(name:"A dozen work clothes"),
            ListItem(name:"A dozen night clothes"),
            ListItem(name:"A dozen underwear"),
            ListItem(name:"A dozen socks"),
            ListItem(name:"Four Shoes"),
            ListItem(name:"Car"),
            ListItem(name:"Carryon Bag"),
            ListItem(name:"Suitcase")
        ])
        let list3 = List(name: "Shopping", items: [
            ListItem(name:"Cereals"),
            ListItem(name:"Bread"),
            ListItem(name:"Cheese Slice"),
            ListItem(name:"Salami"),
            ListItem(name:"Bacon"),
            ListItem(name:"Pasta"),
            ListItem(name:"Tuna"),
            ListItem(name:"Whole Chicken"),
            ListItem(name:"Steak")
        ])
        return [list1, list2, list3]
    }
}
