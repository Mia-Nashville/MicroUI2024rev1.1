//
//  ContentView.swift
//  MicroUI2024rev1
//
//  Cr/Users/satoshimitsumori/Desktop/Project Folder/MicroUI2024rev1/MicroUI2024rev1/ContentView.swifteated by Satoshi Mitsumori on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewmodel.userSession != nil {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
