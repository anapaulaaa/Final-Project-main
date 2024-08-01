//
//  timer.swift
//  Final Project
//
//  Created by Ana Paula Vásquez on 31/07/24.
//

import SwiftUI

struct timer: View {
    @State private var timeRemaining = 60
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
    
        NavigationStack {
            ZStack {
                Color(red: 200/255, green: 215/255, blue: 220/255)
                    .ignoresSafeArea()
                VStack {
                
                    Text("Brush Now!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255))
                    
                    Image("brush")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .cornerRadius(18)
                    
                    
                    VStack {
                        Text("Time remaining: \(timeRemaining)")
                            .font(.title2)
                            .foregroundColor(Color.red)
                    }
                    
                        .onReceive(timer) { _ in
                            if timeRemaining > 0 {
                                timeRemaining -= 1 // decrement the time by 1 second
                            } else {
                                timer.upstream.connect().cancel() // stop the timer
                            }
                    
                    
                
                           // NavigationLink(destination: timer()) {
                              //  Text("Timer")
                                //    .font(.headline)
                               //     .fontWeight(.semibold)
                                //    .foregroundColor(Color.blue)
                         //   }
                    }
                }
            }
        }
    }

}

#Preview {
    timer()
}
