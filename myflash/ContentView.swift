//
//  ContentView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var langInUse: LanguageInUse
    
    fileprivate let myaChar: aChar = aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}", alt: false)
    
    fileprivate let myaChars: [aChar] = myKataKanaaCharsLine2f
    
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

//            CharacterView(achar: myaChar)
//                .tabItem {
//                    Label("a", systemImage: "bookmark.square")
//                }
            
            LineOfCharactersView(lineOfChars: myKataKanaaCharsLine2f)
                .tabItem {
                    Label("b", systemImage: "book.fill")
                }
            
            PageOfCharactersView()
                .tabItem {
                    Label(labelText, systemImage: "rectangle.and.pencil.and.ellipsis") }
            
        }
        .environmentObject(langInUse)
    }
}

#Preview {
    ContentView()
        .environmentObject(LanguageInUse())
}
/*
 ⛅︎
 SUN BEHIND CLOUD
 Unicode: U+26C5 U+FE0E, UTF-8: E2 9B 85 EF B8 8E
 */

