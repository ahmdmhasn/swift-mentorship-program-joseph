//
//  LoginViewModel.swift
//  MentorshipAppV2
//
//  Created by Joseph Ching on 2022-07-30.
//

import Foundation
import Combine

// Access Modifiers
// Open - Public - Internal - Fileprivate - Private

class LoginViewModel {
    
    // This works, but is it proper MVVM?
    
    var cancellables: Set<AnyCancellable> = []
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    @Published private(set) var signInReady: Bool = false
    @Published var signedIn : Bool = false
    @Published private(set) var loggedInText: String?
    
    init() {
        Publishers
            .CombineLatest($email, $password)
            .sink { [weak self] (email, password) in
                self?.signInReady = (email.count >= 8 && password.count >= 8)
            }
            .store(in: &cancellables)
    }
    
    // MARK: User Intent(s)
        
    func attemptSignIn() {
        // always set signedIn to true for now
        signedIn = true
        sendLoginRequest()
    }
    
    // MARK: Private Handlers
    
    private func sendLoginRequest() {
        Task {
            do {
                let networkService = NetworkService()
                let response = try await networkService.sendLoginRequest(email: email, password: password)
                self.loggedInText = "Logged In ✅"
                print(response)
            } catch {
                print(error)
            }
        }
    }
}
