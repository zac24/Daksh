//
//  ViewController.swift
//  Daksh
//
//  Created by Prashant Dwivedi on 05/10/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    var centerYAnchor : NSLayoutConstraint?
    var centerXAnchor : NSLayoutConstraint?
    var bottomAnchor : NSLayoutConstraint?
    var stackViewTopAnchor : NSLayoutConstraint?
    var stackViewBottomAnchor : NSLayoutConstraint?
    var stackView : UIStackView = UIStackView()
    
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
        button.backgroundColor = UIColor.dakshThemeColor()
        button.layer.cornerRadius = 5.0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    let signupButton :UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("SIGNUP", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.dakshThemeColor()
        button.layer.cornerRadius = 5.0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setNavigationUI()
        self.title = LOGIN_TITLE
        
        view.addSubview(brandingImage)
        
        centerYAnchor = brandingImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -140)
        centerXAnchor = brandingImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        bottomAnchor = brandingImage.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        NSLayoutConstraint.activate(
            [brandingImage.heightAnchor.constraint(equalToConstant: 140),
             brandingImage.widthAnchor.constraint(equalToConstant: 280),
             centerXAnchor!,
             bottomAnchor!
            ])
        
        configureViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateViews()
    }
    
    fileprivate func configureViews() {
        
        stackView = UIStackView(arrangedSubviews: [userNameTextField, passwordTextField, loginButton, signupButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 14
        stackView.alpha = 0
        view.addSubview(stackView)
        stackViewTopAnchor = stackView.topAnchor.constraint(equalTo: brandingImage.bottomAnchor, constant: 40)
        stackViewBottomAnchor = stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40)
        
        NSLayoutConstraint.activate(
            [stackViewBottomAnchor!,
             stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
             stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
             stackView.heightAnchor.constraint(equalToConstant: 200),
             ])
    }
    
    fileprivate func animateViews() {
        bottomAnchor?.isActive = false
        centerYAnchor?.isActive = true

        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 4, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion:  { (finished: Bool) -> Void in
            
            self.stackViewBottomAnchor?.isActive = false
            self.stackViewTopAnchor?.isActive = true
            UIView.animate(withDuration: 1.0, delay: 0.3, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
                self.stackView.alpha = 1.0
            }, completion: nil)
        })
    }
    
    @objc func signupButtonTapped() {
        let signupView : JTSignupViewController = JTSignupViewController()
        self.navigationController?.pushViewController(signupView, animated: true)
    }
    
    @objc func loginButtonTapped() {
        
    }
}

