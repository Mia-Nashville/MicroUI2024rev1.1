//
//  MicroUI2024rev1App.swift
//  MicroUI2024rev1
//
//  Created by Satoshi Mitsumori on 1/3/24.
//

import SwiftUI
import FirebaseCore

@main
struct MicroUI2024rev1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

