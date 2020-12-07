//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Михаил Ильченко on 06.10.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    @IBOutlet var profileHeaderView: ProfileHeaderView!
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var statusTextField: UITextField!
    @IBOutlet var setStatusButton: UIButton!
    @IBOutlet var avatarImageView: UIImageView!
    
    
    
    
    private(set) lazy var exampleButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.layer.cornerRadius = 4 //закругление
        button.layer.shadowOffset = CGSize(width: 4, height: 4) //??
        button.layer.shadowRadius = 4 //тень закруглений?
        button.layer.shadowColor = UIColor.black.cgColor // цвет тени
        button.layer.shadowOpacity = 0.7 //прозрачность тени
        
        button.backgroundColor = .blue
        button.setTitle("Example Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        return button
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //navigationController?.navigationBar.isHidden = false
        
        
        profileHeaderView.backgroundColor = .lightGray
        
        fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.textColor = .black
        fullNameLabel.text = "Hipster Waiter"
        
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
        statusLabel.text = "Waiting for something..."
        
        statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusTextField.textColor = .black
        statusTextField.text = "  Waiting for something"
        statusTextField.backgroundColor = .white
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.masksToBounds = true
        
        setStatusButton.layer.cornerRadius = 4 //закругление
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4) //??
        setStatusButton.layer.shadowRadius = 4 //тень закруглений?
        setStatusButton.layer.shadowColor = UIColor.black.cgColor // цвет тени
        setStatusButton.layer.shadowOpacity = 0.7 //прозрачность тени
        setStatusButton.layer.masksToBounds = true
        setStatusButton.addTarget(self, action: #selector(changeStatus), for: .touchUpInside)

        
        setStatusButton.backgroundColor = .blue
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        
        
        avatarImageView.layer.borderWidth = 3

        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.width/2
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.image = #imageLiteral(resourceName: "test")

        
        view.addSubview(exampleButton)
        
        exampleButton.translatesAutoresizingMaskIntoConstraints = false
        exampleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        exampleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        exampleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        exampleButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        
    }
    
    @objc func changeStatus() {
        statusLabel.text = statusTextField.text
        
    }
    
    @IBAction func setStatusButton(_ sender: Any) {
        statusLabel.text = statusTextField.text
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
}
