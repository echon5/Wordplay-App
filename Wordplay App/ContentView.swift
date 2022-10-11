//
//  ContentView.swift
//  Wordplay App
//
//  Created by Erin Chon on 10/5/22.
// hi

import SwiftUI

struct ContentView: View {
    @State private var words = Words ()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "animal", variable: $words.animal0)
                    CustomTextField(placeholder: "animal", variable: $words.animal1)
                }
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb0)
                    CustomTextField(placeholder: "color", variable: $words.color0)
                    CustomTextField(placeholder: "color", variable: $words.color1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    
    var animal0 = ""
    var animal1 = ""
    var verb0 = ""
    var color0 = ""
    var color1 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField (placeholder, text : variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
