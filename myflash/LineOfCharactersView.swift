//
//  LineOfCharactersView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct LineOfCharactersView: View {
    
    init(lineOfChars: [aChar]) {
        myLineToDisplay = lineOfChars
    }
    
    fileprivate var myLineToDisplay: [aChar] = []
    
    var body: some View {
        HStack {
            ForEach(myLineToDisplay, id:\.self) { achar in
                CharacterView(achar: achar)
            }
        }.padding()
    }
}

#Preview {
    LineOfCharactersView(lineOfChars:
                            [aChar(row: 1, column: 1, sound: "a", code: "\u{3042}"),
                             aChar(row: 1, column: 2, sound: "e", code: "\u{3044}"),
                             aChar(row: 1, column: 3, sound: "u", code: "\u{3046}"),
                             aChar(row: 1, column: 4, sound: "e", code: "\u{3048}"),
                             aChar(row: 1, column: 5, sound: "o", code: "\u{304a}")])
}
