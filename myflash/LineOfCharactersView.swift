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
    }
    
    fileprivate var myLineToDisplay: [String] = [""]
    
    var body: some View {
        HStack {
            ForEach(myLineToDisplay, id:\.self) { akey in
                Text(myKatakanaDict.value(forKey: akey) as! String)
            }
        }
        .padding()
    }
}

#Preview {
    LineOfCharactersView(lineOfChars: myFirstRowOfKana.allKeys as! [String])
}
