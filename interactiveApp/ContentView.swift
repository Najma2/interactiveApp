//
//  ContentView.swift
//  interactiveApp
//
//  Created by Scholar on 25/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
                .fontWeight(.light)
            
            TextField("Type name here ...", text: $name)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 2)
                .font(.title)
            
            Button("Submit") {
                  // print(name)
                textTitle = "Welcome, \(name)!"
                name = ""
            }
            .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.teal)
            
            
        } //Closes VStack
    } //Closes body
}//Closes struct

#Preview {
    ContentView()
}
