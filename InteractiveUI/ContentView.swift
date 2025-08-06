//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var age = ""
    @State private var textAge = "How old are you?"
    var body: some View {
        VStack {

    Text(textTitle)
        .font(.title)
        
    TextField("Type your name here...", text: $name)
        .multilineTextAlignment(.center)
        .font(.title)
        .border(Color.gray, width:1)
         
    Text(textAge)
        .font(.title)
            
    TextField("Type age here...", text: $age)
        .multilineTextAlignment(.center)
        .font(.title)
        .border(Color.gray, width:1)
            
    Button("Submit Name and Age") {
        textTitle = "Welcome, \(name)! You are \(age) years old!"
        textAge = ""
    name = ""
    age = ""
        
            }
        .font(.title2)
        .buttonStyle(.borderedProminent)
        .tint(.purple)

    
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
