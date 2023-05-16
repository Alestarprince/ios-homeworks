//
//  InfoViewController.swift
//  Navigation
//
//  Created by nikita pleshakov on 07.05.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    // MARK: - private properties
    
    private lazy var firstButton: UIButton = { // настройка кнопки внутри инициализатора
        let button = UIButton() // создание экземпляра класса
        button.translatesAutoresizingMaskIntoConstraints = false // отключить маску перед настройкой constraints
        button.setTitle("Показать ALERT!", for: .normal)
        button.backgroundColor = .blue // настройка цвета кнопки
        button.layer.cornerRadius = 5 // закругление краев кнопки
        button.addTarget(self, action: #selector(didTabFirstButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupConstraints()
    }
    
    private func setupView() {
        self.view.backgroundColor = .white
        self.view.addSubview(self.firstButton)
    }
    
    @objc
    private func didTabFirstButton() {
        let alert = UIAlertController(
            title: "Внимание!",
            message: "Это мой первый Alert!",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "Ok",
            style: .default
        ) { action in
            guard let title = action.title else {
                return
            }
            print(title)
        }
        let cancelAction = UIAlertAction(
            title: "Отмена",
            style: .default
        ) { action in
            if let text = action.title {
                print(text)
            }
        }
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.firstButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.firstButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 10),
            self.firstButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -10),
            self.firstButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
