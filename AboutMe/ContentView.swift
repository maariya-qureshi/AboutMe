//
//  ContentView.swift
//  AboutMe
//
//  Created by Maariya Qureshi on 7/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //zstack for background color, allows for things to be on top of each other (images on the background color)
        ZStack {
            VStack { //to organize content vertically:
                
                Text(("all about maariya"))
                    .font(.title)
                
                //2 H stacks to have pictures + verbs side by side:
                HStack
                {
                    Image("painting")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("painting is my hobby")
                }
                
                HStack
                {
                    Image("people")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("family & friends!")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
