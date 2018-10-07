//
//  SignupViewController.swift
//  Daksh
//
//  Created by Prashant Dwivedi on 07/10/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

class SignupViewController: BaseViewController {
    
    let nameTextField :UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name*"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        return tf
    }()
    let mobileTextField :UITextField = {
        let tf = UITextField()
        tf.placeholder = "Mobile Number*"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        return tf
    }()
    let emailTextField :UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email Address*"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        return tf
    }()
    let hospitalTextField :UITextField = {
        let tf = UITextField()
        tf.placeholder = "Hospital Name*"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        return tf
    }()
    let cityTextField :UITextField = {
        let tf = UITextField()
        tf.placeholder = "City*"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        return tf
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
        self.view.backgroundColor = UIColor.white
        self.title = SIGNUP_TITLE
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        configureViews()
//        self.setBackButton()
    }
    
    func configureViews() {
        let stackView = UIStackView(arrangedSubviews: [nameTextField, mobileTextField, emailTextField, hospitalTextField, cityTextField, signupButton])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 14
        stackView.alpha = 1
        view.addSubview(stackView)
        
        stackView.anchor(top: view.topAnchor, paddingTop: 110, left: view.leftAnchor, paddingLeft: 20, bottom: nil, paddingBottom: 0, right: view.rightAnchor, paddingRight: -20, width: 0, height: CGFloat(stackView.subviews.count * 50))
        
    }
    
    @objc func signupButtonTapped() {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
