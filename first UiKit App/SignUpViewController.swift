//
//  SignUpViewController.swift
//  first UiKit App
//
//  Created by Ian Baikuchukov on 17/1/24.
//
//задание
//
//При нажатии на кнопку Sign Up и при нажатии на кнопку гугл и фэйсбук (БЕЗ ТВИТТЕРА) – проверять на валидность почту и пароль.
//
//Проверка на почту – содержит "@", точку и начинается с маленькой буквы. Количество символов больше 4.
//
//Если проверку прошел – закрашивать границы в зеленый цвет.
//Если проверку не прошел – закрашивать границы в красный цвет.
//
//Проверка на пароль. Проверять, что текст в текстфилде password и confirmPassword одинаковый.
//
//Если проверку прошел – закрашивать границы в зеленый цвет.
//
//Если проверку не прошел – закрашивать границы в красный цвет.
//
//При нажатии на кнопку твиттер, делать цвет фона экрана (view.backgroundColor) синим. При повторном нажатии делать обратно белым.

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var emailSignUp: UITextField!
    
    @IBOutlet weak var passwordSIgnUp: UITextField!
    
    @IBOutlet weak var confirmSignUp: UITextField!
    
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    
    //При нажатии на кнопку Sign Up и при нажатии на кнопку гугл и фэйсбук (БЕЗ ТВИТТЕРА) – проверять на валидность почту и пароль.
    //
    //Проверка на почту – содержит "@", точку и начинается с маленькой буквы. Количество символов больше 4.
    //
    //Если проверку прошел – закрашивать границы в зеленый цвет.
    //Если проверку не прошел – закрашивать границы в красный цвет.
    //
    //Проверка на пароль. Проверять, что текст в текстфилде password и confirmPassword одинаковый.
    //
    //Если проверку прошел – закрашивать границы в зеленый цвет.
    //
    //Если проверку не прошел – закрашивать границы в красный цвет.
    //
    //При нажатии на кнопку твиттер, делать цвет фона экрана (view.backgroundColor) синим. При повторном нажатии делать обратно белым.
    @IBAction func googleSignUp(_ sender: Any) {
       checkAllConditions()
    }
    
    @IBAction func facebookSignUp(_ sender: Any) {
     checkAllConditions()
    }
    var confirmPass = ""
    func changeView(){
        mainView.backgroundColor = .blue
    }
    @IBAction func twitterSignUp(_ sender: Any) {
        changeView()
        
    }
    func updateEmail(){
        //Проверка на почту – содержит "@", точку и начинается с маленькой буквы. Количество символов больше 4.
        //Если проверку прошел – закрашивать границы в зеленый цвет.
        //Если проверку не прошел – закрашивать границы в красный цвет.
        let email = emailSignUp.text ?? ""
        let firstSymbol = email.first ?? Character (" ")
        let isEmailValid = email.contains("@") && email.contains(".") && email.count > 4 && firstSymbol.isLowercase
        
        if isEmailValid{
            emailSignUp.layer.borderColor = UIColor.green.cgColor
            
        }else{
            emailSignUp.layer.borderColor = UIColor.red.cgColor
            
        }
      
    }
    func updatePassword() {
        let password = passwordSIgnUp.text ?? ""
        let firstSymbol = password.first ?? Character(" ")
        let isPasswordValid = firstSymbol.isLetter && firstSymbol.isLowercase && password.count > 5 && password.contains(where: {$0.isNumber})
        
        if isPasswordValid {
            passwordSIgnUp.layer.borderColor = UIColor.green.cgColor
            confirmPass = password
        } else {
            passwordSIgnUp.layer.borderColor = UIColor.red.cgColor
        }
    }

    func confirmPassword(){
        let password = confirmSignUp.text ?? ""
        
        if password == confirmPass {
            confirmSignUp.layer.borderColor = UIColor.green.cgColor
        }else{
            confirmSignUp.layer.borderColor = UIColor.red.cgColor
            
        }
        
    }
    func checkAllConditions(){
        updateEmail()
       updatePassword()
        confirmPassword()
    }
    
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        checkAllConditions()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailSignUp.layer.borderWidth = 1
        passwordSIgnUp.layer.borderWidth = 1
        emailSignUp.layer.cornerRadius = 12
        passwordSIgnUp.layer.cornerRadius = 12
        confirmSignUp.layer.borderWidth = 1
        confirmSignUp.layer.cornerRadius = 12
        
    }
    
}
