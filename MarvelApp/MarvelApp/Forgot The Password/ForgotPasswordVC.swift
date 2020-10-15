//
//  ForgotPasswordVC.swift
//  MarvelApp
//
//  Created by Amanda Nolasco on 09/10/20.
//

import UIKit

class ForgotPasswordVC: BaseViewController{
    //commit: Criei as IBOutlets da tela e actions
    
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
    
    // commit: arredondei os textfields e botões
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
    
    }
    
    
    @IBAction func tappedUpdateButton(_ sender: UIButton) {
        print("tappedUpdateButton")
    }
    
    @IBAction func showLogin(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    }
    

