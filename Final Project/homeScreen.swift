//
//  homeScreen.swift
//  Final Project
//
//  Created by Ana Paula Vásquez on 31/07/24.
//

import SwiftUI

struct homeScreen: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(red: 173/255, green: 202/255, blue: 221/255)
                    .ignoresSafeArea()
                VStack {
                    Text("What can we help you with?")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255))
                
                    NavigationLink(destination: timer()) {
                        Text("Brush Timer")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.blue)
                    }
                }
            }
        }
    }

}

#Preview {
    homeScreen()
}
