//
//  StoryView.swift
//  Wordplay App
//
//  Created by Erin Chon on 10/7/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(typeStory())
    }
    func typeStory () -> String {
        return "I begin to board the plane with a \(words.noun0)" + " in my hand. My luggages are \(words.color0) and \(words.color1). " + "I get to my gate fast which means \(words.noun1). " + "But when i get there the flight attendent has a \(words.adjective0) face. " + "My \(words.noun2) went to the zoo store and got a \(words.animal0) and \(words.animal1) as a free gift!! " + "The animals were very \(words.adjective1) and \(words.adjective2). " + "I then \(words.verb0) on board because it was time to board."
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
