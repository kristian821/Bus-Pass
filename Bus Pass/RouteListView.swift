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
    
    var date = Date()
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                VStack {
                    Text("Route 60")
                    Text("10:22 AM")
                }
                Spacer()
                Text("Leaves in 10 Mins!").font(.title).foregroundColor(.red)
            }.padding()
            .navigationBarTitle("Upcoming Routes")
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RouteListView()
    }
}
