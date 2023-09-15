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
            CharacterView(achar: aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}"))
                .tabItem {
                    Label("a", systemImage: "bookmark.square")
                }
            LineOfCharactersView(lineOfChars: [aChar(row: 1, column: 1, sound: "ka", code: "\u{30ab}"),
                                               aChar(row: 1, column: 2, sound: "ki", code: "\u{30ad}"),
                                               aChar(row: 1, column: 3, sound: "ku", code: "\u{30af}"),
                                               aChar(row: 1, column: 4, sound: "ke", code: "\u{30b1}"),
                                               aChar(row: 1, column: 5, sound: "ko", code: "\u{30b3}")])
            .tabItem {
                Label(labelText, systemImage: "list.dash") }
            
            PageOfCharactersView(arrayOfachars: [aChar(row: 1, column: 1, sound: "a", code: "\u{3042}"),
                                                 aChar(row: 1, column: 2, sound: "i", code: "\u{3044}"),
                                                 aChar(row: 1, column: 3, sound: "u", code: "\u{3046}"),
                                                 aChar(row: 1, column: 4, sound: "e", code: "\u{3048}"),
                                                 aChar(row: 1, column: 5, sound: "o", code: "\u{304a}"),
                                                 aChar(row: 2, column: 1, sound: "ka", code: "\u{30ab}"),
                                                 aChar(row: 2, column: 2, sound: "ki", code: "\u{30ad}"),
                                                 aChar(row: 2, column: 3, sound: "ku", code: "\u{30af}"),
                                                 aChar(row: 2, column: 4, sound: "ke", code: "\u{30b1}"),
                                                 aChar(row: 2, column: 5, sound: "ko", code: "\u{30b3}")
                                                ])
            .tabItem {
                Label(labelText, systemImage: "rectangle.and.pencil.and.ellipsis") }
            
        }
    }
    
}

#Preview {
    ContentView()
}

