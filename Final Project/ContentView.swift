//
//  ContentView.swift
//  Final Project
//
//  Created by Druthi Muppala on 7/26/24.
//

import SwiftUI
//hi
struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 173/255, green: 202/255, blue: 221/255)
                    .ignoresSafeArea()
        VStack {
            Text("Welcome to")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255))
            
            Image("logo")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(18)
            
            VStack {
                NavigationLink(destination: HomeScreen()) {
                                    Image("start")
                       
                        .resizable()
                        
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.all)
                    
                                }
        }
            }
        }
            }
        }
    }

#Preview {
    ContentView()
}
