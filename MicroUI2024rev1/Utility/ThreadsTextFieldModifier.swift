//
//  ThreadsTextFieldModifier.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 12/30/23.
//

import Foundation
import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 25)
        
        
    }
}
