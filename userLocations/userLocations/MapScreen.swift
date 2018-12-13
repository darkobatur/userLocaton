//
//  ViewController.swift
//  userLocations
//
//  Created by O on 12/6/18.
//  Copyright © 2018 Darko Batur. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapScreen: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setupLocation() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    
    func checkLocationServise() {
        if CLLocationManager.locationServicesEnabled() {
            setupLocation()
        } else {
            // on location servise
        }
    }
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            break
        case .denied:
            break
        case .notDetermined:
            break
        case .restricted:
            break
        case .authorizedAlways:
            break
        }
    }
}
extension MapScreen: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Locatin
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // authorization
    }
    
}
