//
//  Appetizer.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/13.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
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
    
    
    
    static let orderItem1 = Appetizer(id: 1,
                                           name: "Test Meal one",
                                           description: "This is dummy data to test cool things",
                                           price: 12.99,
                                           imageURL: "",
                                           calories: 12,
                                           protein: 24,
                                           carbs: 36)
    
    static let orderItem2 = Appetizer(id: 2,
                                           name: "Test Meal two",
                                           description: "This is dummy data to test cool things",
                                           price: 12.99,
                                           imageURL: "",
                                           calories: 12,
                                           protein: 24,
                                           carbs: 36)
    
    static let orderItem3 = Appetizer(id: 3,
                                           name: "Test Meal three",
                                           description: "This is dummy data to test cool things",
                                           price: 12.99,
                                           imageURL: "",
                                           calories: 12,
                                           protein: 24,
                                           carbs: 36)
    
    
    static let orderItems = [orderItem1, orderItem2, orderItem3]
    
}

