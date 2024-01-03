//
//  BasicSafetyImageRow.swift
//  MicropileProject2024
//
//  Created by Satoshi Mitsumori on 1/3/24.
//

import Foundation
import SwiftUI

struct BasicSafetyImageRow: View {
    var selectedSafety: InsiteSafetyModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 10) {
                Image(selectedSafety.jobphoto)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                
                Text(selectedSafety.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            Divider()
        }
    }
}

struct BasicSafetyImageRow_Preview: PreviewProvider {
    static var previews: some View {
        BasicSafetyImageRow(selectedSafety: devPreview.mockSafety)
    }
}
