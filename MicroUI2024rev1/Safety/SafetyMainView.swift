//
//  SafetyMainView.swift
//  MicropileProject2024
//
//  Created by Satoshi Mitsumori on 1/3/24.
//

import SwiftUI

struct SafetyMainView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Safety Topic Awareness")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(5)
                    
                    LazyVStack(alignment: .leading) {
                        ForEach(insiteCollections) { items in
                        NavigationLink(destination: {
                            HazardDetailView(selectedsafety: items)
                       //    SafetyDetailView(selectedSafety: items)
                        }, label: {
                            BasicSafetyImageRow(selectedSafety: items)
                        })}
                       
                    }
                }
            }
        }
    }
}

#Preview {
    SafetyMainView()
}
