//
//  ViewController.swift
//  LoginApp
//
//  Created by Konstantin Simusev on 22.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var userNameButton: UIButton!
    @IBOutlet var passwordButton: UIButton!
    
    private let userName = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logInButtonPressed() {
        guard let name = userNameTF.text, name == userName else {
            showAlert(title: "Oops!", message: "Your name is User 😉")
            return
        }
        
        guard let key = passwordTF.text, key == password else {
            showAlert(title: "Oops!", message: "Your password is Password 😉")
            return
        }
        
    }
    
    @IBAction func userNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }
    
    @IBAction func passwordButtonpressed() {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
    }
    
    
}
// MARK: - Extensions
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
