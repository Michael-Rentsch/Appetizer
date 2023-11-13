//
//  Appetizer.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/13.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Test Meal",
                                           description: "This is dummy data to test cool things",
                                           price: 12.99,
                                           imageURL: "",
                                           calories: 12,
                                           protein: 24,
                                           carbs: 36)
    
    
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
}

