//
//  ContentView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    
    
    fileprivate let hiraLabelText: String = ""
    var body: some View {
        
        TabView {
            TextToSpeech()
                .tabItem {
                    Label("a", systemImage: "bookmark")
                }
            CharacterView(achar: aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}"))
                .tabItem {
                    Label("a", systemImage: "bookmark.square")
                }
            LineOfCharactersView(lineOfChars: akanaarray0)
            .tabItem {
                Label(labelText, systemImage: "list.dash") }
            
            PageOfCharactersView(arrayOfachars: akanaarray2)
            .tabItem {
                Label(labelText, systemImage: "rectangle.and.pencil.and.ellipsis") }
            
        }
    }
}

#Preview {
    ContentView()
}

