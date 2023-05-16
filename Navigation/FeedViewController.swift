//
//  FeedViewController.swift
//  Navigation
//
//  Created by nikita pleshakov on 02.05.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Post", for: .normal)
        button.setTitleColor(.systemBackground, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        return button
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()

    }
    
    private func setupView() {
        title = "Feed"
        view.backgroundColor = .systemGreen
        view.addSubview(actionButton)
    }
    private func setupConstraints(){
        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            actionButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: 20.0
            ),
            actionButton.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -20.0
            ),
            actionButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            actionButton.heightAnchor.constraint(equalToConstant: 44.0)
        ])
    }
    
    @objc func buttonPressed() {
        let newPost = Post(title: "My First Post")
        let postViewController = PostViewController(post: newPost)
        self.navigationController?.pushViewController(postViewController, animated: true)
        // postViewController.modalPresentationStyle = .fullScreen
        // postViewController.modalTransitionStyle = .coverVertical // flipHorizontal
        // postViewController.modalPresentationStyle = .overFullScreen // pageSheet
        // present(postViewController, animated: true)
    }
}
