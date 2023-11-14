//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/14.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            Image("juicy-steak-medium-rare-beef-with-spices-grilled-vegetables")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 80)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
