//
//  Dates+EXT.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/22.
//

import Foundation

extension Date {
    
    var eighteenYearsAgo : Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo : Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
    
}
