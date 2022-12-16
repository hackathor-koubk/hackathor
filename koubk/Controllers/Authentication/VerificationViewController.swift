//
//  VerificationViewController.swift
//  koubk
//
//  Created by Toygun Çil on 17.12.2022.
//

import Foundation
import UIKit

class VerificationViewController: UIViewController {
    //MARK: - Properties
    @IBOutlet weak var borderStackView: UIStackView!
    @IBOutlet weak var fourthVerifyNumTextField: UITextField!
    @IBOutlet weak var thirdVerifyNumTextField: UITextField!
    @IBOutlet weak var secondVerifyNumTextField: UITextField!
    @IBOutlet weak var firstVerifyNumTextField: UITextField!
    @IBOutlet weak var acceptButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        firstVerifyNumTextField.isSecureTextEntry = true
        secondVerifyNumTextField.isSecureTextEntry = true
        thirdVerifyNumTextField.isSecureTextEntry = true
        fourthVerifyNumTextField.isSecureTextEntry = true
        
        firstVerifyNumTextField.layer.cornerRadius = 8
        secondVerifyNumTextField.layer.cornerRadius = 8
        thirdVerifyNumTextField.layer.cornerRadius = 8
        fourthVerifyNumTextField.layer.cornerRadius = 8
        
        firstVerifyNumTextField.clipsToBounds = true
        secondVerifyNumTextField.clipsToBounds = true
        thirdVerifyNumTextField.clipsToBounds = true
        fourthVerifyNumTextField.clipsToBounds = true
        
        
        acceptButton.layer.cornerRadius = acceptButton.frame.size.height/2
        acceptButton.clipsToBounds = true
        
        refreshButton.layer.cornerRadius = refreshButton.frame.size.height/2
        refreshButton.clipsToBounds = true
        
        borderStackView.layer.cornerRadius = borderStackView.frame.size.height/8
        borderStackView.clipsToBounds = true
    }
    // MARK: - Selectors
    
    // MARK: - Helpers


}
