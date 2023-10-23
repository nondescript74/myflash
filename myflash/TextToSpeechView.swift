//
//  TextToSpeech.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/16/23.
//

import SwiftUI
import AVFoundation

struct TextToSpeech: View {
    @EnvironmentObject var langInUse: LanguageInUse
    
    @State private var inputMessage: String = ""
    @State private var selectedFlavor: Languagez = .English
//    @FocusState private var entryIsFocused: Bool
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
        }
        langInUse.change(language: current)
        return current
    }

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
            
//            TextField("Enter your words to be spoken", text: $inputMessage)
//                .padding()
//                .focused($entryIsFocused)
            
            TextEditor(text: $inputMessage)
                .font(.title2)
                .background(Color.gray)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .padding()
//                .focused($entryIsFocused)
            
            Button {
                let utterance = AVSpeechUtterance(string: inputMessage)
                utterance.pitchMultiplier = 1.0
                utterance.rate = 0.5
                utterance.voice = AVSpeechSynthesisVoice(language: getSelectedLanguage())
                utterance.volume = 20
            
                speechSynthesizer.speak(utterance)
                hideKeyboard()
                
            
            } label: {
                Text("Read")
                    .bold()
            }
            
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
        }
        .environmentObject(langInUse)
    }
}

#Preview {
    TextToSpeech()
        .environmentObject(LanguageInUse())
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
