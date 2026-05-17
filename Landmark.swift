//
//  Untitled.swift
//  Landmarks
//
//  Created by Jesse Crocker on 2026-05-17.
//


import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var category: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var isFeatured: Bool
    var isFavorite: Bool
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    

}

