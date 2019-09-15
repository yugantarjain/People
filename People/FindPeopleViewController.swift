//
//  FindPeopleViewController.swift
//  People
//
//  Created by yugantar jain on 15/09/19.
//  Copyright © 2019 yugantar jain. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class FindPeopleViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate {
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        mapView.userTrackingMode = .follow
        
        destinationField.delegate = self
        
//        let spinner = UIActivityIndicatorView.init(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
//        spinner.startAnimating()
//        destinationField.addSubview(spinner)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.destinationField.text = "University of Waterloo"
//            spinner.removeFromSuperview()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var destinationField: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
