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
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 3}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 4}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 5}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 6}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 7}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
            HStack {
                ForEach(myArrayOfChars.filter({$0.row == 8}), id: \.self) { achar in
                    CharacterView(achar: achar)
                }
            }
        }
        
    }
}

#Preview {
    PageOfCharactersView(arrayOfachars: myKataKanaaChars2f)
}
