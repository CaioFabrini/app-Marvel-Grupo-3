//
//  ForgotPasswordVC.swift
//  MarvelApp
//
//  Created by Amanda Nolasco on 09/10/20.
//

import UIKit

class ForgotPasswordVC: BaseViewController{
    
    
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet weak var updateButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configScreen()
        
       
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    
    
    func configScreen(){
        
        self.updateButton.layer.cornerRadius = 25
        self.updateButton.layer.borderWidth = 3
        self.updateButton.layer.borderColor = UIColor.white.cgColor
        self.cpfTextField.layer.cornerRadius = 30
        self.passwordTextField.layer.cornerRadius = 30
        self.confirmPasswordTextField.layer.cornerRadius = 30
        self.cpfTextField.layer.masksToBounds = true
        self.passwordTextField.layer.masksToBounds = true
        self.confirmPasswordTextField.layer.masksToBounds = true
        self.cpfTextField.attributedPlaceholder = NSAttributedString(string: "CPF", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.confirmPasswordTextField.attributedPlaceholder = NSAttributedString(string: "Confirm Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    
    }
    
    
    @IBAction func tappedUpdateButton(_ sender: UIButton) {
        
    }
    
    @IBAction func showLogin(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    func validCPF(textField: String) -> Bool {
        
        return textField.isCPF
       
        }
    
    func validPassword(passwordTextField: String,confirmPasswordTextField: String ) -> Bool {
        
        if passwordTextField.count >= 6 && confirmPasswordTextField.count >= 6{
            return true
        } else if passwordTextField == confirmPasswordTextField {
            return true
        }else{
          return false
        }
    }
}
