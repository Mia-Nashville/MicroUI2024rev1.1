//
//  CircularProfileImageView.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 1/2/24.
//

import SwiftUI
import Kingfisher

struct CircularProfileImageView: View {
    var user: UserModel?
    
    var body: some View {
        if let imageUrl = user?.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .foregroundColor(Color.gray).opacity(0.9)
        }
    }
}

#Preview {
    CircularProfileImageView()
}
