//
//  ContentView.swift
//  Hello World
//
//  Created by Drew DeBruyne on 3/18/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, \(name.isEmpty ? "World" : name)!")
                .font(.largeTitle)
                .bold()
                .padding()
                

            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .autocapitalization(.words)

            Button(action: {
                name = ""
            }) {
                Text("Clear")
                    .font(.title2)
                    .bold()
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
