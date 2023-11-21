//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Michael Rentsch on 2023/11/21.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimarySwiftUI)
            .controlSize(.large)
    }
    
}
