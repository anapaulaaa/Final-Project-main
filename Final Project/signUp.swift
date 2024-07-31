//
//  signUp.swift
//  Final Project
//
//  Created by Ana Paula Vásquez on 31/07/24.
//

import SwiftUI

struct signUp: View {
    
    @State private var textName = "Name: "
    @ State private var name = ""
    
    @State private var textPhone = "Phone Number: "
    @ State private var number = ""
    
    @State private var textDOB = "DOB: "
    @ State private var dob = ""
    
    @State private var textUserName = "User: "
    @ State private var user = ""
    
    @State private var textPassword = "Password: "
    @ State private var pass = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(red: 173/255, green: 202/255, blue: 221/255)
                    .ignoresSafeArea()
        VStack {
            Text("SIGN UP")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255))
            
            HStack {
                Text(textName)
                    .font(.title)
                    .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255)) .padding()
                
                TextField("", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1) .padding()
            }
            
            HStack {
                Text(textPhone)
                    .font(.title)
                    .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255)) .padding()
                
                TextField("", text: $number)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1) .padding()
            }
            
            HStack {
                Text(textDOB)
                    .font(.title)
                    .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255)) .padding()
                
                TextField("", text: $dob)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1) .padding()
            }
            
            HStack {
                Text(textUserName)
                    .font(.title)
                    .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255)) .padding()
                
                TextField("", text: $user)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1) .padding()
            }
           
            HStack {
                Text(textPassword)
                    .font(.title)
                    .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255)) .padding()
                
                TextField("", text: $pass)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: 1) .padding()
            }
            
    
            NavigationLink(destination: logIn()) {
                Text("Start tracking")
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
    signUp()
}
