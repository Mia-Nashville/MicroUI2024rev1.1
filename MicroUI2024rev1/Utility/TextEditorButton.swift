//
//  TextEditorButton.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 12/30/23.
//

import SwiftUI
import Foundation

struct TextEditorButton: View {
    @State var editorText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            TextEditor(text: $editorText)
                .frame(width: 340, height: 100, alignment: .center)
                .padding(5)
                .background(RoundedRectangle(cornerRadius: 14).stroke(Color(UIColor.systemGray2)))
                .background(.ultraThinMaterial).opacity(0.8)
          //      .shadow(radius: 1, x: 1, y: 1)
        }
    }
}

struct TextEditorButton_Preview: PreviewProvider {
    static var previews: some View {
        TextEditorButton(editorText: "Enter Text")
    }
}
