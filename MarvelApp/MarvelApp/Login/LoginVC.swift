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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configScreen()
        
    }

    func configScreen(){
        self.loginButton.layer.cornerRadius = 30
        self.loginButton.layer.borderWidth = 3
        self.loginButton.layer.borderColor = UIColor.white.cgColor
    }
   
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "homeTabBar" , sender: nil)
    }
    
    @IBAction func tappedSignUpButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SignUp", sender: nil)
    }
    @IBAction func tappedForgotPassword(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ForgotPassword", sender: nil)
    }
}

