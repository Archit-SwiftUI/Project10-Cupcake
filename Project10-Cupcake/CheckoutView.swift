//
//  CheckoutView.swift
//  CheckoutView
//
//  Created by Archit Patel on 2021-10-17.
//

import SwiftUI

struct CheckoutView: View {
    
    @ObservedObject var order: Order
    var body: some View {
        Text("sdfasdf")
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
