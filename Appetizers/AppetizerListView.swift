//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/13.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) {appetizer in
                AppetizerListCell(appetizer: appetizer)
                
            }
            .navigationTitle("🍟 Appetizers")
        }
        
    }
}

#Preview {
    AppetizerListView()
}
