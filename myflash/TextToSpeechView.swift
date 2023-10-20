//
//  TextToSpeech.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/16/23.
//

import SwiftUI
import AVFoundation

struct TextToSpeech: View {
//    @EnvironmentObject var langInUse: LanguageInUse
    
    @State private var inputMessage: String = ""
    @State private var selectedFlavor: Languagez = .English
    let speechSynthesizer = AVSpeechSynthesizer()

    enum Languagez: String, CaseIterable, Identifiable {
        case English, Japanese, French
        var id: Self { self }
    }
    fileprivate func getSelectedLanguage() -> String {
        var current = "en-US"
        switch selectedFlavor {
        case .English:
            current = "en-US"
        case .Japanese:
            current = "ja-JP"
        case .French:
            current = "fr-FR"
//            langInUse.language = current
        }
        return current
    }
    
//    fileprivate func setLanguageInUse() {
//        var myLang: String = "en-US"
//        switch selectedFlavor {
//        case .English:
//            myLang = "en-US"
//        case .Japanese:
//            myLang = "ja-JP"
//        case .French:
//            myLang = "fr-FR"
//            langInUse.language = myLang
//        }
//    }

    var body: some View {
        VStack {
            Text("Read Aloud")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
            Picker("Language", selection: $selectedFlavor) {
                ForEach(Languagez.allCases) { flavor in
                    
                    Text(flavor.rawValue.capitalized)
                }
            }
            
            TextEditor(text: $inputMessage)
                .font(.title2)
                .background(Color.gray)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .padding()
            
            Button {
                let utterance = AVSpeechUtterance(string: inputMessage)
                utterance.pitchMultiplier = 1.0
                utterance.rate = 0.5
                utterance.voice = AVSpeechSynthesisVoice(language: getSelectedLanguage())
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
