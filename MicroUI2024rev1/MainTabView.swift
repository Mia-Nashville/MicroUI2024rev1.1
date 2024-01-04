//
//  MainTabView.swift
//  MicropileProject2024
//
//  Created by Satoshi Mitsumori on 1/2/24.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedTab = 0
    @State private var showCreateTabview: Bool = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 0
                }
                .tag(0)
            
            UserView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear {
                    selectedTab = 1
                }
                .tag(1)
            
            ProjectSetup()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "plus.circle.fill" : "plus")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 2
                }
                .tag(2)
            
            SafetyMainView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "cross.vial" : "cross.case.fill")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 3
                }
                .tag(3)
            
            CurrentUserProfileView()
           // ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "person.circle.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 4
                }
                .tag(4)
        }
        .onChange(of: selectedTab, perform: { newValue in
        showCreateTabview = selectedTab == 2 })
            // MARK: For Making the cancel button work in CreateProjectView
        
        .fullScreenCover(isPresented: $showCreateTabview, onDismiss: {
            selectedTab = 0
        }, content: {
           ProjectSetup()
        })
        
        .tint(.black)
        // MARK: For Setting the TabColor
        
        }
    
    var tabTitle: String {
        switch selectedTab {
        case 0: return "Feed"
        case 1: return "User"
        case 2: return "Projects"
        case 3: return "Safety"
        case 4: return "Profile"
        default: return ""
            
        }
    }
    }


#Preview {
    MainTabView()
}
