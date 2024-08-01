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
                Color(red: 200/255, green: 215/255, blue: 220/255)
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
