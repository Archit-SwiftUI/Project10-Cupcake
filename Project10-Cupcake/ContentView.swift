//
//  ContentView.swift
//  Project10-Cupcake
//
//  Created by Archit Patel on 2021-10-16.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var order = Order()
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    Picker("Select your cake type", selection: $order.type) {
                        ForEach(0..<Order.types.count, id: \.self) {
                            Text(Order.types[$0])
                        }
                    }
                    
                    Stepper(value: $order.quantity,in: 3...20) {
                        Text("Number of cakes: \(order.quantity)")
                    }
                }
                
                Section {
                    
                    Toggle(isOn: $order.specialRwquestEnabled.animation()) {
                        Text("Any special request?")
                    }
                    
                    if order.specialRwquestEnabled {
                        Toggle(isOn: $order.extraFrosting) {
                            Text("Add extra frosting")
                        }
                        
                        Toggle(isOn: $order.addSprinkles) {
                            Text("Add extra sprinkles.")
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: AddressView(order: order)) {
                        Text("Delivery details")
                    }
                }
            }
            .navigationBarTitle("Cupcake Corner")
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
