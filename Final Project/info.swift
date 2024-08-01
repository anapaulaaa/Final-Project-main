//
//  info.swift
//  Final Project
//
//  Created by Ana Paula Vásquez on 31/07/24.
//

import SwiftUI

struct OralCareInformationCenterView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Oral Care Information Center")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255))
                .padding(.bottom, 20)
            
            Link("How to Brush Your Teeth", destination: URL(string: "https://www.healthline.com/health/dental-and-oral-health/how-to-brush-your-teeth")!)
                .font(.headline)
                .foregroundColor(.blue)
            
            Link("Flossing Tips", destination: URL(string: "https://www.sensodyne.com/en-us/oral-health-tips/flossing-tips-from-dentist/")!)
                .font(.headline)
                .foregroundColor(.blue)
            
            Link("Choosing the Right Toothpaste", destination: URL(string: "https://health.clevelandclinic.org/how-to-choose-the-best-toothpaste-for-you")!)
                .font(.headline)
                .foregroundColor(.blue)
            
            Link("Oral Health for Kids", destination: URL(string: "https://kidshealth.org/en/parents/healthy.html")!)
                .font(.headline)
                .foregroundColor(.blue)
            
            Link("Preventing Cavities", destination: URL(string: "https://www.thesummerlindentist.com/blog/preventing-cavities-has-never-been-easier-6-daily-practices-to-never-have-a-cavity-again/")!)
                .font(.headline)
                .foregroundColor(.blue)
            
            Spacer()
        }
        .padding()
        .background(Color(red: 173/255, green: 202/255, blue: 221/255))
        .ignoresSafeArea()
    }
}

struct OralCareInformationCenterView_Previews: PreviewProvider {
    static var previews: some View {
        OralCareInformationCenterView()
    }
}



