//
//  SafetyDetailView.swift
//  MicropileProject2024
//
//  Created by Satoshi Mitsumori on 1/3/24.
//

import SwiftUI

struct SafetyDetailView: View {
    var selectedSafety: InsiteSafetyModel
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 2) {
                InSiteTitleView()
                
                InsiteHeaderView(selectedsafety: selectedSafety)
                
                InsiteBodyView(selectedsafety: selectedSafety)
            }
        }
        
    }
}


struct InSiteTitleView: View {
    var body: some View {
        HStack {
            Text("Safety Details:")
                .font(.headline)
                .foregroundColor(Color.primary)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
    }
}

struct InsiteBodyView: View {
    @State var selectedsafety: InsiteSafetyModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Spacer()
            Text("\(selectedsafety.subtitle):")
                .fontWeight(.black)
                .padding(.leading)
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
            // using to align text to left
            
            Spacer()
            
            Text(selectedsafety.description)
                .hoverEffect(.automatic)
                .font(.body)
                .padding(.horizontal, 14)
                .lineLimit(2)
            
            Spacer(minLength: 10)
            Text("\(selectedsafety.hazardControltitle):")
                .fontWeight(.black)
                .padding(.leading)
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
           
            Spacer()
            
            Text(selectedsafety.controlMeasure)
                .font(.headline)
                .padding(.horizontal, 14)
                .lineLimit(2)
            
            Spacer(minLength: 10)
            
            Text(selectedsafety.controlMeasure2)
                .font(.headline)
                .padding(.horizontal, 14)
                .lineLimit(2)
            
        }
        
    }
}

struct InsiteHeaderView : View {
    @State var selectedsafety: InsiteSafetyModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Image(selectedsafety.jobphoto)
                    .resizable()
                //  .aspectRatio(contentMode: .fill)
                    .frame(width: .infinity, height: 440)
                    .clipped()
                    .overlay(
                        HStack {
                            VStack(alignment: .leading) {
                                Spacer()
                                Text(selectedsafety.title)
                                    .font(.system(.title3, design: .rounded))
                                    .foregroundColor(Color.white)
                                    .padding(10)
                                    .background(Color.blue)
                                    .fontWeight(.bold)
                                    .cornerRadius(20)
                                //   .offset(x:-90, y:-20)
                            }
                        })
            }
        }
        
    }
}

struct SafetyDetailView_Preview: PreviewProvider {
    static var previews: some View {
        SafetyDetailView(selectedSafety: devPreview.mockSafety)
    }
}
