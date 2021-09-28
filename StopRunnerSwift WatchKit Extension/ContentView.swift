//
//  ContentView.swift
//  StopRunnerSwift WatchKit Extension
//
//  Created by Kevin Morales on 9/28/21.
//

import SwiftUI

struct ContentView: View {
    
    fileprivate var speed = "200"
    
    var body: some View {
        VStack {
            Text("Current Speed")
                .font(.caption)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            Text("\(speed) Km/h")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Text("Dev Kevinho Morales")
                .font(.footnote)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            Spacer()
            Button("Set Up Limit") {
                print("Button tapped!")
            }
            .background(Color.pink)
            .cornerRadius(15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
