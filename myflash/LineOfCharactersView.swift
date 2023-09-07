//
//  LineOfCharactersView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct LineOfCharactersView: View {
    
    init(lineOfChars: [String]) {
        myLineToDisplay = lineOfChars
        mySet = "hiragana"
    }
    
    init(lineOfChars: [String], setOf: String) {
        myLineToDisplay = lineOfChars
        mySet = setOf
    }
    
    fileprivate var myLineToDisplay: [String] = [""]
    fileprivate var mySet: String = ""
    
    var body: some View {
        HStack {
            if mySet == "katakana" {
                ForEach(myLineToDisplay, id:\.self) { akey in
                    Text(myKatakanaDict.value(forKey: akey) as! String)
                }
            } else if mySet == "hiragana" {
                ForEach(myLineToDisplay, id:\.self) { aValue in
                    Text(aValue)
                }
            } else {
                
            }
        }
        .padding()
    }
}

#Preview {
    LineOfCharactersView(lineOfChars: myFirstRowOfKana.allKeys as! [String])
}
