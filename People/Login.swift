//
//  ViewController.swift
//  People
//
//  Created by yugantar jain on 14/09/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        submitButton.layer.cornerRadius = 8
        
    }

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitEmail(_ sender: UIButton) {
        submit()
    }
    
    func submit() {
        let email = emailField.text ?? ""
        let password = passwordField.text ?? ""
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            // ...
        }
        return
    }
    
}

