//
//  ViewController.swift
//  LoginDemo
//
//  Created by Kyle Smith on 11/10/18.
//  Copyright © 2018 smithcoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var signInButton: UIButton = {
        let button = UIButton(type: .system)
        let borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 8
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        button.setTitle("Sign In", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = borderColor
        // button.addTarget(nil, action: #selector(onLoginPressed), for: .touchDown)
        button.addTarget(nil, action: #selector(onSignInReleased), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(signInButton)
        signInButton.addDropShadow()
        _ = signInButton.anchor(nil, left: nil, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 275, heightConstant: 50)
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func onSignInReleased() {
        let controller = LoginViewController()
        navigationController?.present(controller, animated: true, completion: nil)
    }
}
