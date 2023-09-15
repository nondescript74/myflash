//
//  CharacterView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct CharacterView: View {
    init(achar: aChar) {
        myCharToDisplay = achar.code
    }
    fileprivate var myCharToDisplay: String = ""
    
    var body: some View {
        Text(myCharToDisplay)
            .font(.headline)
            .padding(5)
    }
}


#Preview {
    CharacterView(achar: aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}"))
}
