//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jesse Crocker on 2026-05-17.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
                    
            }
            
            .shadow(radius: 7)
    }
    
}

#Preview {
    CircleImage()
}
