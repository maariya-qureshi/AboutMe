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
                    .padding()
                
                //2 H stacks to have pictures + verbs side by side:
                HStack
                {
                    Image("painting")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("painting nature!")
                        .padding()
                }
                .background(Rectangle()
                    .foregroundColor(Color(hue: 0.934, saturation: 0.328, brightness: 0.887)))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                //can change the size of image by adding in NUMBERS inside the padding paranthesis -> changes the narrowness
                //or u can use spacers
                
                HStack
                {
                    Image("people")
                        .resizable( resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("family & friends!")
                        .padding()
                }
                .background(Rectangle()
                    .foregroundColor(Color(hue: 0.934, saturation: 0.328, brightness: 0.887)))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
