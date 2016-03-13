//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by Wolfgang Ettlich on 13/3/2016.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation


// Protocols

protocol VendingMachineType {
    var selection: [VendingSelection] {get}
    var inventory: [VendingSelection: ItemType] {get set}
    var amountDeposited: Double {get set}

    init(inventory: [VendingSelection: ItemType])
    func vend(selection: VendingSelection, quantity: Double) throws
    func deposit(amount: Double)
}

protocol ItemType {
    var price: Double {get}
    var quantity: Double {get set}
}

enum VendingSelection {
    case Soda
    case DietSoda
    case Chips
    case Cookie
    case Sandwich
    case Wrap
    case CandyBar
    case PopTart
    case Water
    case FruitJuice
    case SportsDrink
    case Gum
}

struct VendingItem: ItemType {
    let price: Double
    var quantity: Double
    
}

class VendingMachine: VendingMachineType {
    var selection: [VendingSelection] = [.Soda, .DietSoda, .Chips, .Cookie, .Sandwich, .Wrap, .CandyBar, .PopTart, .Water, .FruitJuice, .SportsDrink, .Gum]
    var inventory: [VendingSelection: ItemType]
    var amountDeposited: Double = 10.0
    required init(inventory: [VendingSelection: ItemType]){
        self.inventory = inventory
    }
    
    func vend(selection: VendingSelection, quantity: Double) throws {
        // add code
    }
    
    func depost(amount: Double) {
        // add code
    }
}