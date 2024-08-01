//
//  info.swift
//  Final Project
//
//  Created by Ana Paula Vásquez on 31/07/24.
//

import SwiftUI
import SafariServices
struct OralCareInformationCenterView: View {
    @State private var selectedURL: URL? = nil
    @State private var isShowingSafariView = false
    var body: some View {
        ZStack {
            Color(red: 173/255, green: 202/255, blue: 221/255)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Oral Care Information Center")
                    .padding(.all, 33.0)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 15/255, green: 26/255, blue: 42/255))
                    .multilineTextAlignment(.center)
                    .padding(.all, 33.0)
                
                Button(action: {
                    self.selectedURL = URL(string: "https://www.healthline.com/health/dental-and-oral-health/how-to-brush-your-teeth")
                    self.isShowingSafariView = true
                }) {
                    Text("How to Brush Your Teeth")
                
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                Button(action: {
                    self.selectedURL = URL(string: "https://www.sensodyne.com/en-us/oral-health-tips/flossing-tips-from-dentist/")
                    self.isShowingSafariView = true
                }) {
                    Text("Flossing Tips")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                Button(action: {
                    self.selectedURL = URL(string: "https://health.clevelandclinic.org/how-to-choose-the-best-toothpaste-for-you")
                    self.isShowingSafariView = true
                }) {
                    Text("Choosing the Right Toothpaste")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                Button(action: {
                    self.selectedURL = URL(string: "https://kidshealth.org/en/parents/healthy.html")
                    self.isShowingSafariView = true
                }) {
                    Text("Oral Health for Kids")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                Button(action: {
                    self.selectedURL = URL(string: "https://www.thesummerlindentist.com/blog/preventing-cavities-has-never-been-easier-6-daily-practices-to-never-have-a-cavity-again/")
                    self.isShowingSafariView = true
                }) {
                    Text("Preventing Cavities")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                Spacer()
            }
            .padding()
            .background(Color(red: 173/255, green: 202/255, blue: 221/255))
            .ignoresSafeArea()
            .sheet(isPresented: $isShowingSafariView) {
                if let url = self.selectedURL {
                    SafariView(url: url)
                }
            }
        }
    }
}
struct SafariView: UIViewControllerRepresentable {
    let url: URL
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}
struct OralCareInformationCenterView_Previews: PreviewProvider {
    static var previews: some View {
        OralCareInformationCenterView()
    }
}

