//
//  CharacterView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI
import AVFoundation

struct CharacterView: View {
    init(achar: aChar) {
        myCharToDisplay = achar.code
        myTextToSpeech = achar.sound
    }
    
    fileprivate var myCharToDisplay: String
    fileprivate var myTextToSpeech: String
//    let synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        Text(myCharToDisplay)
            .font(.headline)
            .padding(5)
//            .onTapGesture {
//                let utterance = AVSpeechUtterance(string: myTextToSpeech)
//                utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
//                utterance.rate = 1.0
//                utterance.volume = 1.0
//                
//                synthesizer.speak(utterance)
//            }
    }
}


#Preview {
    CharacterView(achar: aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}"))
}

//                let voices = AVSpeechSynthesisVoice.speechVoices()
//
//                for voice in voices {
//                    print(voice.language)
//                }
