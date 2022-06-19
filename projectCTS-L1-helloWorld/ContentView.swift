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
    
    var body: some View {
        VStack {
            Text(message[messageIndex % message.count])
            Button {
                messageIndex += 1
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
