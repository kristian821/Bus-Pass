//
//  RouteDetailView.swift
//  Bus Pass
//
//  Created by Kristian Mitchell on 12/23/20.
//

import Foundation
import SwiftUI
import MapKit
import CoreLocation

struct RouteDetailView: View {
    
    
    @State var testRegion = MKCoordinateRegion(center: MKUserLocation().coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    @State var trackingmode: MapUserTrackingMode = .follow
    var locationManager = LocationManager()
    var route: Route
   var userLocation = MKUserLocation()
    var date = Date()
    
   
    
    
    
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $testRegion, interactionModes: .all, showsUserLocation: true, userTrackingMode: $trackingmode)
                .edgesIgnoringSafeArea(.top)
            
            Spacer()
            Text("Leaves in 10 Mins!")
                .font(.title2).foregroundColor(.red)
            }
        .navigationBarTitle(route.name)
        .onAppear(perform: {
            locationManager.startUpdating()
        })
        
    }
}

struct RouteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RouteDetailView(route: testData[0])
        }
    }
}


