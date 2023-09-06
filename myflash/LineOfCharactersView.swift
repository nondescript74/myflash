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
    
    fileprivate var myLineToDisplay: [String] = [""]
    fileprivate var mySet: String = ""
    
    var body: some View {
        HStack {
            if mySet == "katakana" {
                ForEach(myLineToDisplay, id:\.self) { akey in
                    Text(myKatakanaDict.value(forKey: akey) as! String)
                }
            } else {
                ForEach(myLineToDisplay, id:\.self) { akey in
                    Text(myHiraganaDict.value(forKey: akey) as! String)
                }
            }
        }
        .padding()
    }
}

#Preview {
    LineOfCharactersView(lineOfChars: myFirstRowOfKana.allKeys as! [String])
}
