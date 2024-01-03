//
//  ProjectModel.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 1/2/24.
//

import Foundation
import FirebaseFirestoreSwift
import Firebase

// MARK: @DocumentID will not become active unless you import FirebaseFirestoreSwift and FirebaseFirestore

struct ProjectModel: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    var clientName: String?
    var location: String
    var imageUrlString: String?
    var projectManager: String
    var projectNumber: String
    var projectTitle: String
    var projectDescription: String
    var superintendent: String
    let ownerUid: String
    let timestamp: Timestamp
   
    var user: UserModel?
}
