//
//  Location.swift
//  Bus Pass
//
//  Created by Kristian Mitchell on 12/23/20.
//

import Foundation
import CoreLocation
import Combine

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    private var locationManager = CLLocationManager()

    var willChange = PassthroughSubject<LocationManager, Never>()

    
    var lastKnownLocation: CLLocation? {
        didSet {
            willChange.send(self)
        }
    }
    
    
    init(locationManager: CLLocationManager = CLLocationManager()) {
        self.locationManager = locationManager
        super.init()
    }
    
    func startUpdating() {
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        }
    
    

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        lastKnownLocation = locations.last
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            manager.startUpdatingLocation()
        }
    }
    
}




