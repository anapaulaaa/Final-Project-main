//
//  homeScreen.swift
//  Final Project
//
//  Created by Ana Paula Vásquez on 31/07/24.
//

import SwiftUI

struct HomeScreen: View {
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
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                    
                    // VStack to stack buttons vertically
                    VStack(spacing: 20) {
                        NavigationLink(destination: timer()) {
                            Image("timer")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150) // Adjust size as needed
                                .padding()
                        }
                        
                        NavigationLink(destination: OralCareInformationCenterView()) {
                            Image("info")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150) // Adjust size as needed
                                .padding()
                        }
                        
                        NavigationLink(destination: funFactsView()) {
                                Image ("facts")// Ensure this image exists in your assets
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150) // Adjust size as needed
                                .padding()
                        }
                    }
                    .padding()
                    
                    Spacer()
                }
            }
        }
    }
}

struct TimerView: View {
    var body: some View {
        Text("Timer Screen")
    }
}

struct oralCareInformationCenterView: View {
    var body: some View {
        Text("Information Center Screen")
    }
}

struct funFactsScreenView: View {
    var body: some View {
        Text("Fun Facts Screen")
    }
}

#Preview {
    HomeScreen()
}

