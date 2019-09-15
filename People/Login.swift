//
//  ViewController.swift
//  People
//
//  Created by yugantar jain on 14/09/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit
import FirebaseAuth

var name = ""

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        submitButton.layer.cornerRadius = 8
        
        nameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitEmail(_ sender: UIButton) {
        submit()
    }
    
    func submit() {
        name = nameField.text ?? ""
        let email = emailField.text ?? ""
        let password = passwordField.text ?? ""
        self.performSegue(withIdentifier: "toApp", sender: self)
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            // ...
            print(error)
            print(authResult)
            guard error == nil else {
                return
            }
        }
        return
    }
    
}

