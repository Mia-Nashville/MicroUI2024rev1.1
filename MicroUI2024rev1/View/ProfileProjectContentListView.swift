//
//  ProfileProjectContentListView.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 1/2/24.
//

import SwiftUI

struct ProfileProjectContentListView: View {
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                LazyVStack {
                    ForEach(0..<10, id: \.self) {projects in
                        ProjectCell()
                    }
                }
            }
        }
    }
}

struct ProfileProjectContentListView_Preview: PreviewProvider {
    static var previews: some View {
        ProfileProjectContentListView()
    }
}
