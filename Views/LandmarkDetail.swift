//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jesse Crocker on 2026-05-17.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        //VStack is a vertical stack, can take arguments
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                //HStack is horizontal stack
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
            
        }
    }


#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
