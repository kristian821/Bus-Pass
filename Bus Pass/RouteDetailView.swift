//
//  RouteDetailView.swift
//  Bus Pass
//
//  Created by Kristian Mitchell on 12/23/20.
//

import Foundation
import SwiftUI
import MapKit

struct RouteDetailView: View {
    
    var date = Date()
    var currentLocation = MKMapPoint()
    var mapRect = MKMapRect(origin: currentLocation, size: <#T##MKMapSize#>)
    var map = Map(mapRect: <#T##Binding<MKMapRect>#>, interactionModes: <#T##MapInteractionModes#>, showsUserLocation: <#T##Bool#>, userTrackingMode: <#T##Binding<MapUserTrackingMode>?#>)
    
    var body: some View {
        VStack {
            
        
        Text("Leaves in 10 Mins!")
            .font(.title2).foregroundColor(.red)
        }
            .navigationBarTitle("Route 20")
    }
}

struct RouteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RouteDetailView()
        }
    }
}
