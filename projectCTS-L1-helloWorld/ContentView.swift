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
    
    @State var borderOn = 0
    
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
                if borderOn == 1 {
                    Text("Change Text")
                        .font(.system(size: 36))
                        .frame(width: 250, height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.blue, lineWidth: 2)
                    )
                } else {
                    Text("Change Text")
                        .font(.system(size: 36))
                        .frame(width: 250, height: 60)
                }
            }
            // Add a picker
            Picker("", selection: $borderOn) {
                Text("Border OFF").tag(0)
                Text("Border ON").tag(1)
            }
            .pickerStyle(.segmented)
            .frame(width: 250)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
