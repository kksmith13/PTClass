//
//  LoginViewController.swift
//  LoginDemo
//
//  Created by Kyle Smith on 11/10/18.
//  Copyright © 2018 smithcoding. All rights reserved.
//

import UIKit

class LoginViewController: ViewController {
    lazy var loginView: LoginView = {
        let view = LoginView(frame: self.view.frame)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginView)
        // Do any additional setup after loading the view.
    }
    
    @objc func onCancelReleased() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func onLoginReleased() {
//        let emailText = loginView.emailTextField.text!
//        let passwordText = loginView.passwordTextField.text!
//        
//        if(passwordText.characters.count == 0 || emailText.characters.count == 0) {
//            showAlert()
//        } else {
//            dismiss(animated: true, completion: nil)
//        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Error", message: "Your email or password is empty!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}
