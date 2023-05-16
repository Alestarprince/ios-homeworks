//
//  PostViewController.swift
//  Navigation
//
//  Created by nikita pleshakov on 03.05.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    var post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNavigationBar()
    }

    private func setupView() {
        view.backgroundColor = .systemYellow
        self.navigationItem.title = self.post.title
    }
    
    private func setupNavigationBar() {
        let barButtonItem = UIBarButtonItem( // создание кнопки
            image: UIImage(systemName: "info.circle"), // установка картинки, своя картинка named: ""
            style: .done, // стиль
            target: self, // где искать функцию
            action: #selector(didTabBarButtonItem) // вызов функции по имени
        )
        self.navigationItem.rightBarButtonItem = barButtonItem
    }
    @objc
    private func didTabBarButtonItem() {
        let infoViewController = InfoViewController()
        self.present(infoViewController, animated: true)
    }
}
