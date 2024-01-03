//
//  PreviewProvider.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 1/2/24.
//

import Foundation
import SwiftUI
import Firebase

extension PreviewProvider {
    static var devPreview: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let mockUser = UserModel(email: "mia@gmail.com", fullname: "Mia Mitsumori", uid: NSUUID().uuidString, username: "mia")
    
    let mockProjects = ProjectModel(location: "Nashville, TN", projectManager: "Lanier Hutchingson", projectNumber: "1228883", projectTitle: "MDHA Mixed Use Development", projectDescription: " 5 story apartment", superintendent: "Cody Weitzel", ownerUid: NSUUID().uuidString, timestamp: Timestamp())
    
    let mockSafety = InsiteSafetyModel(title: "LNOS", description: "Microfine and Fracture grouting for LA tunnel", controlMeasure: "Tieback suits", controlMeasure2: "Proper PPE", jobphoto: "image 1")
}
