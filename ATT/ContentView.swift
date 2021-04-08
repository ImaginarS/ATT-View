//
//  ContentView.swift
//  ATT
//
//  Created by Sandra Q on 4/5/21.
//

import SwiftUI

struct DestinationPageView: View {
    var color: Color
    
    var body: some View {
        Text("Destination Page")
            .font(.title)
            .foregroundColor(color)
    }
}
struct ContentView: View {
    @State private var shouldShowYellow =  false
    @State private var showDetails = false
    
    
        var body: some View {
        NavigationView {
                
            VStack(alignment: .leading, spacing: 10) {
                Text("Help Support Public Radio -  Allow Sponsorship Tracking")
                    .fontWeight(.bold)
                    .padding()
                    .font(.title2)
                    //.font(.system(size: 20))
                Text("Opt in to give us permission to serve you higher value sponsoship messages that are more relevant to you and your interests")
                    .padding()
                    .font(.title3)


                Link(destination: URL(string: "www.google.com")!) {
                    Text("Learn More about IDFA Tracking").underline()
                        .font(.body)
                        .font(.system(size: 20))
                        .foregroundColor(.blue)
                        .padding()
                }
                

                VStack {
                    Button("Allow Tracking") {
                        //action to perform
                        showDetails.toggle()
                    }
                    //Button UI
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40)
                    .padding(10)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(Capsule(style: .circular).foregroundColor(.blue))
                    .padding(15)
                    Button("Not Now") {
                        //action to perform
                        showDetails.toggle()
                    }
                    //Button UI
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(10)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(Capsule(style: .circular).foregroundColor(.gray))
                    .padding(15)
                }
                
                Spacer()
                
                if showDetails {
                    Text("Help Support Public Radio -  Allow Sponsorship Tracking")
                }
                     
//                     NavigationLink (
//                    destination: DestinationPageView(color: .purple),
//                    isActive: $shouldShowYellow) {
//                    Text("Help Support Public Radio -  Allow Sponsorship Tracking")
//                }
                
            }

            
            
            .navigationTitle("NPR Sponsorship")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
