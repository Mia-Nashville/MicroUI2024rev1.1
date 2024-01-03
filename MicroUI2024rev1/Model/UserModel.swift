//
//  UserModel.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 12/31/23.
//

import Foundation
import SwiftUI
import FirebaseFirestoreSwift
import Firebase

struct UserModel: Identifiable, Codable, Hashable {
    @DocumentID var id: String?
    let email: String
    let fullname: String
    var uid: String
    let username: String
    var profileImageUrl: String?
}
