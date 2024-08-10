//
//  SecondViewController.swift
//  lesson6
//
//  Created by Dmitrii Nazarov on 10.08.2024.
//

import UIKit

class SecondViewController: UIViewController {
    var userData: UserData?
    
    lazy var nameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = userData?.name
        return $0
    }(UILabel())
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(systemName: userData?.image ?? "")
     return $0
    }(UIImageView())
    
    lazy var textField: UITextView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 20
        $0.backgroundColor = .placeholderText
        $0.textContainerInset = .init(top: 10, left: 10, bottom: 10, right: 10)
     return $0
    }(UITextView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(nameLabel)
        view.addSubview(imageView)
        view.addSubview(textField)
        
        view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
        
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 35),
            textField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            textField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2)
        ])
    }
}
