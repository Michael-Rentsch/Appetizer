//
//  DetailView.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/19.
//

import SwiftUI

struct DetailView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            Image("juicy-steak-medium-rare-beef-with-spices-grilled-vegetables")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    
                Text(appetizer.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.carbs) g")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.protein) g")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                }
                
                Spacer()
                Button {
                    print("Tapped")
                } label: {
                    Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(width: 260, height: 50)
                        .foregroundColor(.white)
                        .background(Color.brandPrimary)
                        .cornerRadius(10)
                    
                }
                .padding(.bottom, 30)
            }
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button  {
            print("dissmiss")
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }, alignment: .topTrailing)
        
    }
}

#Preview {
    DetailView(appetizer: MockData.sampleAppetizer)
}
