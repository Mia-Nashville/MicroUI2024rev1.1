//
//  FeedCell.swift
//  MicropileProject2024
//
//  Created by Satoshi Mitsumori on 1/3/24.
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    @State var projects: ProjectModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            if let profileImageUrl = projects.imageUrlString {
                KFImage(URL(string: profileImageUrl))
                    .resizable()
                    .padding(.vertical, 10)
                    .frame(width: 360, height: 360)
                    .cornerRadius(20)
            }
            
            Text(projects.projectTitle)
                .font(.title3)
                .fontWeight(.black)
                .lineLimit(2)
                .padding(.bottom, 0)
            
            Text(projects.location)
                .font(.headline)
                .fontWeight(.semibold)
                .lineLimit(2)
                .padding(.bottom, 0)
            
            VStack(spacing: 5) {
                HStack(spacing: 20) {
                    NavigationLink(destination: {
                        // MARK: Add Drill Log here
                    }, label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                        Text("Drilling ")
                    })
                    .font(.headline).fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .background(.ultraThickMaterial)
                    
                    NavigationLink(destination: {
                        // MARK: Add Grout Log here
                        
                    }, label: {
                        Image(systemName: "pencil.tip")
                        Text("Grouting")
                    })
                    .font(.headline).fontWeight(.bold)
                    .foregroundColor(Color.indigo)
                    .background(.ultraThickMaterial)
                    
                    
                    NavigationLink(destination: {
                        // MARK: Add Daily Report Here
                        
                    }, label: {
                        Image(systemName: "doc.fill.badge.plus")
                        Text("Daily Report")
                    })
                    .font(.headline).fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .background(.ultraThickMaterial)
                }
                HStack(spacing: 20) {
                    NavigationLink(destination: {
                        // MARK: Add Pile Type here
                    }, label: {
                        Image(systemName: "l.joystick.tilt.up.fill")
                        Text("Pile Type")
                    })
                    .font(.headline).fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .background(.ultraThickMaterial)
                    
                    NavigationLink(destination: {
                        // MARK: Setup Equipment here
                    }, label: {
                        Image(systemName: "r.joystick.tilt.down.fill")
                        Text("Set Up Equipment")
                    })
                    .font(.headline).fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .background(.ultraThickMaterial)
                }
                .padding(.vertical, 5)
            }
        }
    }
}



struct FeedCell_Preview: PreviewProvider {
    static var previews: some View {
        FeedCell(projects: devPreview.mockProjects)
    }
}
