//
//  LineOfCharactersView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct LineOfCharactersView: View {
    
    @EnvironmentObject var langInUse: LanguageInUse
    
    init(lineOfChars: [aChar]) {
        myLineToDisplay = lineOfChars
    }
    
    fileprivate var myLineToDisplay: [aChar] = []
    
    var body: some View {
        HStack {
            ForEach(myLineToDisplay, id:\.self) { achar in
                CharacterView(achar: achar)
            }
        }
    }
}

#Preview {
    LineOfCharactersView(lineOfChars: myKataKanaaCharsLine2f.filter({$0.row == 5}))
        .environmentObject(LanguageInUse())
}
