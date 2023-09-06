//
//  CharacterView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct CharacterView: View {
    init(string: String) {
        myCharToDisplay = string
    }
    fileprivate var myCharToDisplay: String = ""
    var body: some View {
        Text(myCharToDisplay)
            .font(.headline)
            .padding(5)
    }
}


#Preview {
    CharacterView(string: myHiraganaDict.value(forKey: "ka") as! String)
}
