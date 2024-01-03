//
//  ProjectCell.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 1/2/24.
//

import SwiftUI
import Kingfisher

struct ProjectCell: View {
  //  let projects: ProjectModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: "person.crop.circle")
                                       .resizable()
                                       .scaledToFill()
                                       .frame(width: 45, height: 45)
                                       .clipShape(Circle())
                                       .foregroundColor(Color.gray).opacity(0.9)
                
//                if let profileImageUrl = projects.profileImageUrl {
//                    KFImage(URL(string: profileImageUrl))
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 45, height: 45)
//                        .clipShape(Circle())
//                } else {
//                    Image(systemName: "person.crop.circle")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 45, height: 45)
//                        .clipShape(Circle())
//                        .foregroundColor(Color.gray).opacity(0.9)
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Project Panda")
                        //      Text(projects.projectTitle)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    Text("Project #11000093")
                    //     Text("#\(projects.projectNumber)")
                        .font(.subheadline)
                    
                    Text("Columbia, TN")
                    //      Text(projects.location)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                }
            Divider()
                .padding(.top)
            }
        .padding()
        }
    }

struct ProjectCell_Preview: PreviewProvider {
    static var previews: some View {
        ProjectCell()
    //    ProjectCell(projects: devPreview.mockProjects)
    }
}
