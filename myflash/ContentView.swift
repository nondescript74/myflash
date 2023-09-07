//
//  ContentView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            CharacterView(string: myHiraganaDict.value(forKey: "ga") as! String)
                .tabItem {
                    Label(myHiraganaDict.value(forKey: "ga") as! String, systemImage: "list.dash")
                }
            
            LineOfCharactersView(lineOfChars:
                                    [myHiraganaDict.value(forKey: "ka") as! String,
                                     myHiraganaDict.value(forKey: "ki") as! String,
                                     myHiraganaDict.value(forKey: "ku") as! String,
                                     myHiraganaDict.value(forKey: "ke") as! String,
                                     myHiraganaDict.value(forKey: "ko") as! String],
                                 setOf: "hiragana")
            .tabItem {
                Label("\u{30a2}, " + "\u{30a4}, " + "\u{30a6}, " + "\u{30a8}, " + "\u{30aa}",
                      systemImage: "list.dash") }
        }
    }
}

#Preview {
    ContentView()
}

