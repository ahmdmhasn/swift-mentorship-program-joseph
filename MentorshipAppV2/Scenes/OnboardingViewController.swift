//  
//  OnboardingViewController.swift
//  MentorshipAppV2
//
//  Created by Ahmed M. Hassan on 03/08/2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: Outlets

    // MARK: Properties
        
    private let viewModel: OnboardingViewModelType

    // MARK: Init
        
    init(viewModel: OnboardingViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Actions
//
extension OnboardingViewController {
    
}

// MARK: - Configurations
//
extension OnboardingViewController {
    
}

// MARK: - Private Handlers
//
private extension OnboardingViewController {
}
