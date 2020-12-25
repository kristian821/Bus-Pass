//
//  ContentView.swift
//  Bus Pass
//
//  Created by Kristian Mitchell on 12/23/20.
//

import Foundation
import SwiftUI
import MapKit


struct RouteListView: View {
    
    var locationManager = LocationManager()
    var routes: [Route] = testData
    var date = Date()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(routes) { route in
                    NavigationLink(destination: RouteDetailView(route: route)) {
                       RouteListCellView(route: route)
                        }
                    }.padding()
                }
            .navigationBarTitle("Upcoming Routes")
        }
            
    }
}

struct RouteListCellView: View {
    var route: Route
    var body: some View {
        HStack {
            VStack {
                Text(route.name).font(.title3)
                Text(route.departureTime).font(.headline)
            }
            Spacer()
            Text("Leaves in 10 Minutes").font(.callout).foregroundColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RouteListView(routes: testData)
    }
}
