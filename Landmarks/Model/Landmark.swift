//
//  Landmark.swift
//  Landmarks
//
//  Created by DaN SoGbEy on 18/05/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable{
    
    var id: Int
    var name: String
    var state: String
    var park: String
    var description: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}


struct Coordinates : Codable, Hashable {
    var latitude: Double
    var longitude: Double
}
