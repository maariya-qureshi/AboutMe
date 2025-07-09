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
            Color("bk")
                .ignoresSafeArea()
            VStack { //to organize content vertically:
                
                Text(("all about maariya"))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color("p"))
                
                    .background(Rectangle()
                        .foregroundColor(Color("a")))
                    .cornerRadius(15)
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
                        .foregroundColor(Color("p"))
                }
                .background(Rectangle()
                    .foregroundColor(Color("a")))
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
                        .foregroundColor(Color("p"))
                }
                .background(Rectangle()
                    .foregroundColor(Color("a")))
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
