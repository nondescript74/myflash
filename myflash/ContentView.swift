//
//  ContentView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    
    fileprivate let hiraLabelText: String = ""
    fileprivate let myaChar: aChar = aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}", alt: false)
    
    var body: some View {
        
        TabView {
            SettingsView()
                .tabItem {
                    Label("setting", systemImage: "heart.fill")
                }
            
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
    }
}

#Preview {
    ContentView()
}
/*
 ⛅︎
 SUN BEHIND CLOUD
 Unicode: U+26C5 U+FE0E, UTF-8: E2 9B 85 EF B8 8E
 */

