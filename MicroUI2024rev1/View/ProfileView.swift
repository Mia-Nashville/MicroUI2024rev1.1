//
//  ProfileView.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 12/30/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = CurrentUserProfileViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false, content: {
                VStack(spacing: 20) {
                    if let user = viewModel.currentUser {
                        ProfileHeaderViews(user: user)
                    }
                    
                    Button(action: {
                        print("Follow User")
                    }, label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                            .frame(width: 352, height: 40)
                            .background(.black)
                            .cornerRadius(20)
                    })
                    // MARK: User& Project Listview goes here
                    if let currentUser = viewModel.currentUser {
                        ProfileProjectContentListView()
                    }
                }
            })
            .padding(.horizontal)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        AuthService.shared.signOut()
                    }, label: {
                        HStack {
                            Text("Sign Out")
                            Image(systemName: "line.3.horizontal")
                        }
                    })
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct ProfileView_Preview: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
