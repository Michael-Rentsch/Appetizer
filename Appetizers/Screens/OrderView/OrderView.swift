//
//  OrderView.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/13.
//

import SwiftUI

struct OrderView: View {
    
    //@State private var orderItems = MockData.orderItems
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        //APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 30)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "cart",
                               message: "You have no items in your order. \n Please add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    

}

#Preview {
    OrderView()
}
