//
//  ProjectService.swift
//  MicropileProject2024
//
//  Created by Satoshi Mitsumori on 1/2/24.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct ProjectService {
    
    static func uploadProjects(_ projects: ProjectModel) async throws {
        guard let projectData = try? Firestore.Encoder().encode(projects) else { return }
        
        try await COLLECTION_PROJECTS.addDocument(data: projectData)
                
    }
}
