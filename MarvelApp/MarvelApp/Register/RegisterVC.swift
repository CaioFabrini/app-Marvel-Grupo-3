//
//  RegisterVC.swift
//  MarvelApp
//
//  Created by Caio on 21/09/20.
//

import UIKit

class RegisterVC: BaseViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configScreen()
       
        
        
    }
    
    
    func configScreen(){
        self.signUpButton.layer.cornerRadius = 24
        self.signUpButton.layer.borderWidth = 3
        self.signUpButton.layer.borderColor = UIColor.white.cgColor

        self.usernameTextField.layer.cornerRadius = 24
        self.usernameTextField.clipsToBounds = true
        self.emailTextField.layer.cornerRadius = 24
        self.usernameTextField.layer.masksToBounds = true
        self.emailTextField.layer.masksToBounds = true
        self.cpfTextField.layer.masksToBounds = true
        self.cpfTextField.layer.cornerRadius = 24
        self.passwordTextField.layer.cornerRadius = 24
        self.passwordTextField.layer.masksToBounds = true
        self.confirmPasswordTextField.layer.masksToBounds = true
        self.confirmPasswordTextField.layer.cornerRadius = 24
        self.usernameTextField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        self.emailTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.cpfTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.confirmPasswordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

}
}
