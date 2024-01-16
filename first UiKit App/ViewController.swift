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
        let email = emailTextField.text ?? ""
        let password = passwordsTextField.text ?? ""
        let isEmailValid = email.contains("@") && email.count > 5 && email.contains(".")
        let isPasswordValid = password.contains(where: {$0.isLowercase}) && password.count > 5 && password.contains(where: {$0.isNumber})
        
        if isEmailValid && isPasswordValid{
            emailTextField.layer.borderColor = UIColor.green.cgColor
            passwordsTextField.layer.borderColor = UIColor.green.cgColor
        }else{
            emailTextField.layer.borderColor = UIColor.red.cgColor
            passwordsTextField.layer.borderColor = UIColor.red.cgColor
        }
        
    }
    
    
    @IBAction func googleButton(_ sender: Any) {
        print("Пользователь использовал почту Google")
    }
    @IBAction func facebookButton(_ sender: Any) {
        print("Пользователь использовал почту Facebook")
    }
    
    @IBAction func twitterButton(_ sender: Any) {
        print("Пользователь использовал почту Twitter")
    }
    
    
    @IBAction func signUPbutton(_ sender: Any) {
        print("Пользователь с почтой \(emailTextField.text) хочет зарегистрироваться")
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
//        При нажатии на кнопку Sign In, или кнопку любой из соц.сетей происходит следующая проверка на почту и пароль:
//
//        1) Если почта содержит символ "@" и точку, и длина почты больше 5 символов – границу вокруг текстфилда для почты делать зеленой.
//        Если нет – границу вокруг текстфилда для почты делать зеленой.
//
//        2) Если пароль содержит больше 5 символов, содержит цифры, и первый символ в пароле является буквой с нижнего регистра (isLowercased),  то  границу вокруг текстфилда для пароля делать зеленой.
//
//        Если нет –  границу вокруг текстфилда для пароля делать красной.
//
////        При нажатии на кнопку Sign Up, выводить в консоль пользователь с такой-то почтой зарегистрироваться
   
        
        emailTextField.layer.borderWidth = 1
        passwordsTextField.layer.borderWidth = 1
        emailTextField.layer.cornerRadius = 8
        passwordsTextField.layer.cornerRadius = 8
        eyeButtonOutlet.setTitle("", for: .normal)
        
        
        
        
        
    }
    

    @IBAction func showPasswword(_ sender: Any) {
        passwordsTextField.isSecureTextEntry.toggle()
    }
}

