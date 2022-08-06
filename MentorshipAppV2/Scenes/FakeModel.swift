//
//  FakeModel.swift
//  MentorshipAppV2
//
//  Created by Joseph Ching on 2022-08-01.
//

import Foundation


struct FakeModel {
    // This is a fake model used to test the viewmodels and viewcontrollers
    
    // Model:
    // - UI Independent
    // - Contains the data + logic for the application
    
    
    // AUTHENTICATION
    
    private(set) var email : String = ""
    private(set) var password : String = ""
    
    var signInReady : Bool {
        return (email.count >= 8 && password.count >= 8)
    }
    var signedIn : Bool = false
    
    mutating func updateEmail(_ email : String) {
        self.email = email
    }
    mutating func updatePassword(_ password : String) {
        self.password = password
    }
    mutating func attemptSignIn(){
        // TODO: Currently, this will always set signed in to true
        self.signedIn = true
    }
}
