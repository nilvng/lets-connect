//
//  ContentView.swift
//  LetsConnect
//
//  Created by Nil Nguyen on 27/8/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    @FocusState private var textFieldFocused: Bool
    
    @State var sample = [
        Message(body: "Hello", authorName: "Nil", timestamp: 1),
    ]
    
    
    var body: some View {

        VStack {
            List(sample) {
                Text($0.body)
            }
            Spacer()
        TextField("Type text...",text: $text)
                .focused($textFieldFocused)
                .disableAutocorrection(true)
                .onSubmit {
                    sample.append(Message(body: text, authorName: "Nil", timestamp: 2))
                    text = ""
                }
        }.onAppear {
            textFieldFocused = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
