//
//  ContentView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    //    @EnvironmentObject var langInUse: LanguageInUse
    
    fileprivate let hiraLabelText: String = ""
    fileprivate let myaChar: aChar = aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}", alt: false)
    
    var body: some View {
        
        TabView {
            SettingsView()
            
            TextToSpeech()
                .tabItem {
                    Label("a", systemImage: "book")
                }
            CharacterView(achar: myaChar)
                .tabItem {
                    Label("a", systemImage: "bookmark.square")
                }
            LineOfCharactersView(lineOfChars: myKataKanaaCharsLine2f)
                .tabItem {
                    Label(labelText, systemImage: "list.dash") }
            
            PageOfCharactersView(arrayOfachars: myKataKanaaChars2f)
                .tabItem {
                    Label(labelText, systemImage: "rectangle.and.pencil.and.ellipsis") }
            
        }
        //        .environmentObject(langInUse)
    }
}

#Preview {
    ContentView()
    //        .environmentObject(LanguageInUse())
}

