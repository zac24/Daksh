//
//  ViewController.swift
//  Daksh
//
//  Created by Prashant Dwivedi on 05/10/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let brandingImage : UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named:"full_logo_daksh")
        return image
    }()
    
    let userNameTextField :UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        return tf
    }()
    let passwordTextField :UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        return tf
    }()
    let loginButton :UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LOGIN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 143/255, green: 11/255, blue: 65/255, alpha: 1.0)
        button.layer.cornerRadius = 5.0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()
    let signupButton :UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("SIGNUP", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 143/255, green: 11/255, blue: 65/255, alpha: 1.0)
        button.layer.cornerRadius = 5.0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(brandingImage)
        view.addSubview(userNameTextField)
        
        NSLayoutConstraint.activate(
            [brandingImage.heightAnchor.constraint(equalToConstant: 140),
             brandingImage.widthAnchor.constraint(equalToConstant: 280),
             brandingImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             brandingImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -140)
//             brandingImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 80)
            ])
        
        configureViews()
        
    }
    
    fileprivate func configureViews() {
        
        let stackView = UIStackView(arrangedSubviews: [userNameTextField, passwordTextField, loginButton, signupButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 14
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate(
            [stackView.topAnchor.constraint(equalTo: brandingImage.bottomAnchor, constant: 40),
             stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
             stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
             stackView.heightAnchor.constraint(equalToConstant: 200),
             ])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

