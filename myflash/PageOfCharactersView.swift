//
//  PageOfCharactersView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/7/23.
//

import SwiftUI

struct PageOfCharactersView: View {
    
    init(arrayOfachars: [aChar]) {
        self.myArrayOfChars = arrayOfachars
    }
    
    fileprivate var myArrayOfChars: [aChar]
    
    var body: some View {
        VStack {
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 1}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 2}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
        }
        
    }
}

#Preview {
    PageOfCharactersView(arrayOfachars: [aChar(row: 1, column: 1, sound: "a", code: "\u{3042}"),
                                         aChar(row: 1, column: 2, sound: "i", code: "\u{3044}"),
                                         aChar(row: 1, column: 3, sound: "u", code: "\u{3046}"),
                                         aChar(row: 1, column: 4, sound: "e", code: "\u{3048}"),
                                         aChar(row: 1, column: 5, sound: "o", code: "\u{304a}")])
}
