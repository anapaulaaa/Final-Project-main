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
                        .multilineTextAlignment(.center)
                
                    NavigationLink(destination: timer()) {
                        Image("timer")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.horizontal)
                    }
                    .padding()

                    NavigationLink(destination: OralCareInformationCenterView()) {
                        Image("info")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.horizontal)
                    }
                    .padding()
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

struct InfoView: View {
    var body: some View {
        Text("Information Center Screen")
    }
}

#Preview {
    homeScreen()
}
