//
//  CharacterView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI
import AVFoundation

struct CharacterView: View {
    @EnvironmentObject var langInUse: LanguageInUse
    init(achar: aChar) {
        myCharToDisplay = achar.code
        myTextToSpeech = achar.sound
    }
    
    fileprivate var myCharToDisplay: String
    fileprivate var myTextToSpeech: String
    let synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        Text(myCharToDisplay)
            .fontWidth(.expanded)
            .font(.headline)
            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
            .padding(7)
            .onTapGesture {
                let utterance = AVSpeechUtterance(string: myTextToSpeech)
                utterance.voice = AVSpeechSynthesisVoice(language: langInUse.language)
                utterance.rate = 0.5
                utterance.volume = 10.0
                
                synthesizer.speak(utterance)
            }
            .environmentObject(langInUse)
    }
}


#Preview {
    CharacterView(achar: aChar(row: 1, column: 1, sound: "i", code: "\u{30a4}"))
        .environmentObject(LanguageInUse())
}

