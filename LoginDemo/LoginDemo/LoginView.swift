//
//  LoginView.swift
//  LoginDemo
//
//  Created by Kyle Smith on 11/10/18.
//  Copyright © 2018 smithcoding. All rights reserved.
//

import UIKit

class LoginView: UIView {
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "logo")
        return iv
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.addDropShadow()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 4
        return view
    }()
    
    let emailTextField: UITextField = {
        let tf = LeftPaddedTextField()
        tf.placeholder = "Email Address"
        tf.layer.borderColor = UIColor.secondaryColor.cgColor
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 3
        tf.backgroundColor = .itemBackgroundColor
        tf.autocapitalizationType = .none
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = LeftPaddedTextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.layer.borderColor = UIColor.secondaryColor.cgColor
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 3
        tf.backgroundColor = .itemBackgroundColor
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitle("SIGN IN", for: .normal)
        button.backgroundColor = .secondaryColor
        // button.addTarget(nil, action: #selector(onLoginPressed), for: .touchDown)
        button.addTarget(nil, action: #selector(LoginViewController.onLoginReleased), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.masksToBounds = false
        clipsToBounds = false
        backgroundColor = .primaryColor
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        addSubview(imageView)
        addSubview(containerView)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        _ = imageView.anchor(safeAreaLayoutGuide.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 74, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 125, heightConstant: 125)
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        _ = containerView.anchor(imageView.bottomAnchor, left: leftAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, right: rightAnchor, topConstant: 8, leftConstant: 24, bottomConstant: 36, rightConstant: 24, widthConstant: 0, heightConstant: 0)
        
        _ = emailTextField.anchor(imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 36, leftConstant: 36, bottomConstant: 0, rightConstant: 36, widthConstant: 0, heightConstant: 52)
        
        _ = passwordTextField.anchor(emailTextField.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: -1, leftConstant: 36, bottomConstant: 0, rightConstant: 36, widthConstant: 0, heightConstant: 52)
        
        _ = loginButton.anchor(passwordTextField.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 36, leftConstant: 36, bottomConstant: 0, rightConstant: 36, widthConstant: (frame.width - 36 - 36), heightConstant: 64)
    }
}
