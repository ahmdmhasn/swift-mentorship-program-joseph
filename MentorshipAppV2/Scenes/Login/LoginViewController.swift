//
//  LoginViewController.swift
//  MentorshipAppV2
//
//  Created by Joseph Ching on 2022-07-30.
//

import UIKit
import Combine

class LoginViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    // MARK: - Properties
    
    var viewModel: LoginViewModel = LoginViewModel()
    private var subscribers : [AnyCancellable] = []
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Subscribers
        viewModel.$signInReady
            .receive(on: DispatchQueue.main)
            .assign(to: \.isEnabled, on: signInButton)
            .store(in: &subscribers)
        
        viewModel.$loggedInText
            .receive(on: DispatchQueue.main)
            .sink { text in
                if let text = text {
                    self.signInButton.setTitle(text, for: .normal)
                    self.signInButton.isEnabled = false
                }
            }
            .store(in: &subscribers)
    }
    
    // MARK: Actions
    
    @IBAction func editChangedEmail(_ sender: UITextField) {
        viewModel.email = sender.text ?? ""
    }
    
    @IBAction func editChangedPassword(_ sender: UITextField) {
        viewModel.password = sender.text ?? ""
    }
    
    @IBAction func didPressSignIn(_ sender: UIButton) {
        viewModel.attemptSignIn()
    }
    
    // MARK: Public Handlers
    
    // MARK: Private Handlers
    
}
