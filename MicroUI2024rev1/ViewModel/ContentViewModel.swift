//
//  ContentViewModel.swift
//  MicroUI 2023
//
//  Created by Satoshi Mitsumori on 12/31/23.
//

import Foundation
import Firebase
import Combine


final class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    // MARK: used for signout out user
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession // to avoid retaining cycle, add weak self
        }.store(in: &cancellables)
    }
}
