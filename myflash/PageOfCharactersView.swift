//
//  PageOfCharactersView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/7/23.
//

import SwiftUI

struct PageOfCharactersView: View {
    @EnvironmentObject var langInUse: LanguageInUse
    
    @State private var myLang: Bool = false
    
    var body: some View {
        VStack {
            Button(action:
                    {
                myLang.toggle()
                langInUse.change(language: "jp-JA")
#if DEBUG
                print("Set language to: " + langInUse.language)
#endif
            },
                   label: { myLang ? Text("Kana") : Text("Gana")}
            )
            
            VStack {
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 1}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 2}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 3}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 4}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 5}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 6}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 7}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 8}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 9}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 10}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 11}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 12}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 13}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 14}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 15}))
                LineOfCharactersView(lineOfChars: myLang ? myKataKanaaChars2f : myHiraGanaaChars2f .filter({$0.row == 16}))
            }
        }
        .environmentObject(langInUse)
        
    }
}

#Preview {
    PageOfCharactersView()
        .environmentObject(LanguageInUse())
}
