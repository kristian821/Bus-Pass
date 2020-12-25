//
//  Routes.swift
//  Bus Pass
//
//  Created by Kristian Mitchell on 12/23/20.
//

import Foundation
import MapKit

struct Route: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var direction: String
    var departureTime: String
}


let testData: [Route] = [
    Route(name: "20: SFCC", direction: "Outbound", departureTime: "10:05 AM"),
    Route(name: "60 Airport", direction: "Outbound", departureTime: "10:22 AM"),
    Route(name: "61 Highway 2", direction: "Outbound", departureTime: "10:35 AM")
]
