//
//  APError.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/14.
//

import Foundation

enum APError: Error{
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
