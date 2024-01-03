//
//  ImageUploader.swift
//  ThreadsUI Dec
//
//  Created by Satoshi Mitsumori on 12/24/23.
//

import Foundation
import Firebase
import FirebaseStorage
import FirebaseFirestoreSwift

struct ImageUploader {
    static func uploadImage(_ image: UIImage) async throws -> String? {
        guard let imageData = image.jpegData(compressionQuality: 0.6) else { return nil }
        let filename = NSUUID().uuidString
        let storageRef = Storage.storage().reference(withPath: "/profile_images/ \(filename)")
        
        do {
            let _ = try await storageRef.putDataAsync(imageData)
            let url = try await storageRef.downloadURL()
            return url.absoluteString
        } catch {
            print("Debug: Failed to upload image with error: \(error.localizedDescription)")
            return nil
        }
    }
}
