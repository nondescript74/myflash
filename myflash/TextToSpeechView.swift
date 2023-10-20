//
//  TextToSpeech.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/16/23.
//

import SwiftUI
import AVFoundation

struct TextToSpeech: View {
    
    @State private var inputMessage: String = ""
    let speechSynthesizer = AVSpeechSynthesizer()

    var body: some View {
        VStack {
            Text("Read Aloud")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
            
            TextEditor(text: $inputMessage)
                .font(.title2)
                .background(Color.gray)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .padding()
            
            Button {

                let utterance = AVSpeechUtterance(string: inputMessage)
                utterance.pitchMultiplier = 1.0
                utterance.rate = 0.5
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                utterance.volume = 20
            
                speechSynthesizer.speak(utterance)
            } label: {
                Text("Read")
                    .bold()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
        }
    }
}

#Preview {
    TextToSpeech()
}
