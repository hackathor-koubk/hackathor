//
//  LoginController.swift
//  koubk
//
//  Created by Fatih Bilgin on 16.12.2022.
//

import UIKit


class LoginController: UIViewController {
    
    // MARK: - Properties
<<<<<<< HEAD
    @IBOutlet weak var borderStackView: UIStackView!
    @IBOutlet weak var animView: LottieAnimationView!
=======
    @IBOutlet weak var animView: UIView!
>>>>>>> main
    @IBOutlet weak var phoneNumTextFiled: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgetPassBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumTextFiled.layer.cornerRadius = phoneNumTextFiled.frame.size.height/2
        phoneNumTextFiled.layer.masksToBounds = true
        phoneNumTextFiled.clipsToBounds = true
        
        passwordTextField.isSecureTextEntry = true
        passwordTextField.layer.cornerRadius = passwordTextField.frame.size.height/2
        passwordTextField.layer.masksToBounds = true
        passwordTextField.clipsToBounds = true
        
        forgetPassBtn.layer.cornerRadius = forgetPassBtn.frame.size.height/2
        forgetPassBtn.clipsToBounds = true
        
        loginBtn.layer.cornerRadius = loginBtn.frame.size.height/2
        loginBtn.clipsToBounds = true
        
        borderStackView.layer.cornerRadius = borderStackView.frame.size.height/8
        borderStackView.clipsToBounds = true
  
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
    }
    
    @IBAction func forgetPassBtnTapped(_ sender: Any) {
    }
    // MARK: - Selectors
    
    // MARK: - Helpers
    
}
