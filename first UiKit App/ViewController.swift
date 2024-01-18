//
//  ViewController.swift
//  first UiKit App
//
//  Created by fortune cookie on 1/15/24.
//

import UIKit

class ViewController: UIViewController{

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var loginLabel: UILabel!


    
    
    @IBOutlet weak var passwordsTextField: UITextField!
  

    @IBOutlet weak var googleButton: UIButton!
    
    @IBOutlet weak var facebookButton: UIButton!
    
    @IBOutlet weak var twitterButton: UIButton!
    
  
    @IBOutlet weak var signINButtonOutlet: UIButton!
    
    @IBOutlet weak var eyeButtonOutlet: UIButton!
    
    

    
    @IBAction func signInButton(_ sender: Any) {
        updateEmailAndPasswordTextFields()
    }
    
    @IBAction func googleButton(_ sender: Any) {
        updateEmailAndPasswordTextFields()
    }
    
    @IBAction func facebookButton(_ sender: Any) {
        updateEmailAndPasswordTextFields()
    }
    
    @IBAction func twitterButton(_ sender: Any) {
        updateEmailAndPasswordTextFields()
    }
    
    
    @IBAction func signUPbutton(_ sender: Any) {
        print("Пользователь с почтой \(emailTextField.text) хочет зарегистрироваться")
    }
    
    
    @IBAction func eyeButtonTapped(_ sender: Any) {
        passwordsTextField.isSecureTextEntry.toggle()
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        emailTextField.layer.borderWidth = 1
        passwordsTextField.layer.borderWidth = 1
        emailTextField.layer.cornerRadius = 8
        passwordsTextField.layer.cornerRadius = 8
        eyeButtonOutlet.setTitle("", for: .normal)
    }
    
    func updateEmailAndPasswordTextFields() {
        updateEmailTextField()
        updatePasswordTextField()
    }
    
    func updateEmailTextField() {
        let email = emailTextField.text ?? ""
        let isEmailValid = email.contains("@") && email.count > 5 && email.contains(".")
        
        if isEmailValid {
            emailTextField.layer.borderColor = UIColor.green.cgColor
        } else {
            emailTextField.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    func updatePasswordTextField() {
        let password = passwordsTextField.text ?? ""
        let firstSymbol = password.first ?? Character(" ")
        let isPasswordValid = firstSymbol.isLetter && firstSymbol.isLowercase && password.count > 5 && password.contains(where: {$0.isNumber})
        
        if isPasswordValid {
            passwordsTextField.layer.borderColor = UIColor.green.cgColor
        } else {
            passwordsTextField.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    
    // DRY – Don't Repeat Yourself
    // Single Responsibility

    @IBAction func showPasswword(_ sender: Any) {
        passwordsTextField.isSecureTextEntry.toggle()
    }
}

