//
//  ContentView.swift
//  ChatAppDemo
//
//  Created by Sergei  Sosnovich on 3.10.23.
//

import SwiftUI

struct ContentView: View {
   
    var messageArray = ["Hello you", "How are you doing?", "I've been building SwiftUI applications frome scratch and it's so much fun!"]
    
    var body: some View {
        VStack {
            VStack {
               TitleRow()
                
                ScrollView {
                    ForEach(messageArray, id: \.self) { text in
                        MessageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("Peach"))
            
            MessageField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
