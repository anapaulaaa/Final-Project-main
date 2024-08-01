//
//  funFacts.swift
//  Final Project
//
//  Created by Ana Paula Vásquez on 1/08/24.
//

import SwiftUI

// Define the array of fun facts with straight quotes
let funFacts = [
    "33% of people are born without wisdom teeth.",
    "On average, 3 million teeth are lost at sporting events annually.",
    "Tooth enamel is the hardest substance in the human body.",
    "Like fingerprints—and snowflakes—everyone’s tongue print is unique.",
    "More people use blue toothbrushes than red ones.",
    "Known today as cotton candy, the machine that made 'fairy floss' was co-invented by a dentist.",
    "Coconuts are a natural anti-bacterial. They reduce the risk of developing gum disease and cavities.",
    "Commercial floss was first manufactured in 1882.",
    "The earliest known dentist was Hesi-ren, an Egyptian 'doctor of the tooth' who lived around 3000 B.C.",
    "Children have 20 teeth while adults have 32.",
    "No two people have the same set of teeth. A person’s teeth are as unique as their fingerprint.",
    "Relative to its size, the tongue is the strongest muscle in the human body.",
    "We have four different types of teeth in our mouth: incisors, canine, premolars, and molars."
]

// Function to get a random fun fact
func randomFact() -> String {
    let random = Int.random(in: 0..<funFacts.count)
    return funFacts[random]
}

struct funFactsView: View {
    @State private var funFact: String = "Loading..."

    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text(funFact)
                .font(.title)
                .padding()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .onAppear {
                    funFact = randomFact() // Set fun fact when the view appears
                }
        }
        .padding()
    }
}

#Preview {
    funFactsView()
}

