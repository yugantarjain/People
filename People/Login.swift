//
//  ViewController.swift
//  People
//
//  Created by yugantar jain on 14/09/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        submitButton.layer.cornerRadius = 8
        
    }

    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitEmail(_ sender: UIButton) {
        submit()
    }
    
    func submit() {
        return
    }
    
}

