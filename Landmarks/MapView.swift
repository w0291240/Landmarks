//
//  MapView.swift
//  Landmarks
//
//  Created by Jesse Crocker on 2026-05-17.
//

import SwiftUI

//enables map use
import MapKit

//setting up var for inital display position

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion( center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }

}

#Preview {
    MapView()
}
