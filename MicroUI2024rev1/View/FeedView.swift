//
//  FeedView.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 12/30/23.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var viewModel = ProjectViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(viewModel.projectVM, id: \.self) {projects in
                        NavigationLink(destination: {
                            
                        }, label: {
                            FeedCell(projects: projects)
                        })
                    }
                }
                .padding(.top)
                .navigationTitle("Micropile Projects")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct FeedView_Preview: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
