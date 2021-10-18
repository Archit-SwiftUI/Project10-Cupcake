//
//  Order.swift
//  Order
//
//  Created by Archit Patel on 2021-10-17.
//

import Foundation


class Order : ObservableObject {
    
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRwquestEnabled = false {
        didSet{
            if specialRwquestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    var hasValidAddress : Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
}
