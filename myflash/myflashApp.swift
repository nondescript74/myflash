//
//  myflashApp.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import SwiftUI

@main
struct myflashApp: App {
    var body: some Scene {
        WindowGroup {
            LineOfCharactersView(lineOfChars: myFirstRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: mySecondRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: myThirdRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: myFourthRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: myFirstRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: mySixthRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: mySeventhRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: myEightRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: myNinthRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: myTenthRowOfKana.allKeys as! [String])
            LineOfCharactersView(lineOfChars: myEleventhRowOfKana.allKeys as! [String])
        }
    }
}
