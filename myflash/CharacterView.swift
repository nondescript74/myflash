//
//  CharacterView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

struct CharacterView: View {
    init(string: String) {
        myKanaToDisplay = string
    }
    fileprivate var myKanaToDisplay: String = ""
    var body: some View {
        Text(myKanaToDisplay)
            .font(.headline)
            .padding(5)
    }
}


#Preview {
    CharacterView(string: myKatakanaDict.value(forKey: "ka") as! String)
}
