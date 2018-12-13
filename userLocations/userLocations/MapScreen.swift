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
        checkLocationServise()
    }
    
    func setupLocation() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    
    func checkLocationServise() {
        if CLLocationManager.locationServicesEnabled() {
            setupLocation()
            checkLocationAuthorization()
        } else {
            // on location servise
        }
    }
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            // Do map stuff
            mapView.showsUserLocation = true
            break
        case .denied:
            // Show alert
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            break
        case .restricted:
            // Show alert
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
