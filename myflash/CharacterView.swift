//
//  CharacterView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI
import AVFoundation

struct CharacterView: View {
//    @EnvironmentObject var langInUse: LanguageInUse
    init(achar: aChar) {
        myCharToDisplay = achar.code
        myTextToSpeech = achar.sound
    }
    
    fileprivate var myCharToDisplay: String
    fileprivate var myTextToSpeech: String
    let synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        Text(myCharToDisplay)
            .font(.headline)
            .padding(5)
            .onTapGesture {
                let utterance = AVSpeechUtterance(string: myTextToSpeech)
                utterance.voice = AVSpeechSynthesisVoice(language: "jp-JA")
                utterance.rate = 0.5
                utterance.volume = 5.0
                
                synthesizer.speak(utterance)
            }
    }
}


#Preview {
    CharacterView(achar: aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}"))
}

//                let voices: [AVSpeechSynthesisVoice] = AVSpeechSynthesisVoice.speechVoices()
//
//                for voice in voices {
//                    print(voice.language.utf8)
//                }

