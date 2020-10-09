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


}
}
