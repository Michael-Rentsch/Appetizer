//
//  User.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/20.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
