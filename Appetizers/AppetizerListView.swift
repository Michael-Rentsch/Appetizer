//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/13.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) {appetizer in
                AppetizerListCell(appetizer: appetizer)
                
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        
    }
    

    
}

#Preview {
    AppetizerListView()
}
