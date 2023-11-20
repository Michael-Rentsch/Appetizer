//
//  Alert.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/16.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Invalid URL"),
                                      message: Text("There was an issue connecting to the server. If this persists please contact support."),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                          message: Text("Please fill in all the textfields"),
                                          dismissButton: .default(Text("OK")))
 
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                          message: Text("Please enter a valid email address."),
                                          dismissButton: .default(Text("OK")))
    
    static let UserSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                          message: Text("Your profile has been successfully saved."),
                                          dismissButton: .default(Text("OK")))
    
    static let InvalidUserData = AlertItem(title: Text("Profile Error"),
                                          message: Text("There was an issue saving or retieving your profile."),
                                          dismissButton: .default(Text("OK")))
}

