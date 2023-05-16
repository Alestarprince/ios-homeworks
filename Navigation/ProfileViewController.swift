//
//  ProfileViewController.swift
//  Navigation
//
//  Created by nikita pleshakov on 02.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    private func setupView() {
        view.backgroundColor = .systemTeal
        title = "Profile"
    }
    
}
