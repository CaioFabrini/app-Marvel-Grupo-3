//
//  ViewController.swift
//  MarvelApp
//
//  Created by Caio on 21/09/20.
//

import UIKit

class LoginVC: BaseViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        self.configScreen()
        
    }
    
    func configScreen(){
        self.loginButton.layer.cornerRadius = 30
        self.loginButton.layer.borderWidth = 3
        self.loginButton.layer.borderColor = UIColor.white.cgColor
        self.usernameTextField.layer.cornerRadius = 30
        self.passwordTextField.layer.cornerRadius = 30
        self.usernameTextField.layer.masksToBounds = true
        self.passwordTextField.layer.masksToBounds = true
        self.usernameTextField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
    }
    
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        let password = passwordTextField.text
        
        if  password?.count ?? 0 >= 6 && self.usernameTextField.text != ""{
            
            self.performSegue(withIdentifier: "homeTabBar" , sender: nil)
        }else{
            let alert = UIAlertController(title: "Erro", message: "Dados incorretos", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        }
        //check(login: usernameTextField.text, password: passwordTextField.text)
        
    }
    
    @IBAction func tappedSignUpButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SignUp", sender: nil)
    }
    @IBAction func tappedForgotPasswordButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ForgotPassword", sender: nil)
    }
}





