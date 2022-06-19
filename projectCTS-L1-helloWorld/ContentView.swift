//
//  ContentView.swift
//  projectCTS-L1-helloWorld
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 19/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = ["Hello World", "App Development", "SST ICT Dept"]
    @State var messageIndex = 0
    @State var foregroundColour = Color.white
    @State var backgroundColour = Color.red
    
    var body: some View {
        VStack {
            Text(message[messageIndex % message.count])
                .font(.system(size: 36))
                .frame(width: 374, height: 60)
                .foregroundColor(foregroundColour)
                .background(backgroundColour)
            Button {
                messageIndex += 1
                if message[messageIndex % message.count] == "App Development" {
                    foregroundColour = Color.black
                    backgroundColour = Color.blue
                } else {
                    foregroundColour = Color.white
                    if message[messageIndex % message.count] == "SST ICT Dept" {
                        backgroundColour = Color.green
                    } else {
                        backgroundColour = Color.red
                    }
                }
            } label: {
                Text("Change Text")
            }
            // Add a picker
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
