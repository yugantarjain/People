//
//  FindPeopleViewController.swift
//  People
//
//  Created by yugantar jain on 15/09/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit
import CoreLocation

class FindPeopleViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
