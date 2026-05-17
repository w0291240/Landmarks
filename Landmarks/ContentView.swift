//
//  ContentView.swift
//  Landmarks
//
//  Created by Jesse Crocker on 2026-05-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        //VStack is a vertical stack, can take arguments
        VStack{
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)


            VStack(alignment: .leading) {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                
                //HStack is horizontal stack
                HStack{
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
