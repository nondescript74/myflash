//
//  helpers.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import Foundation
import SwiftUI

let myKataKanaaCharsLine2f = [aChar(row: 5, column: 1, sound: "za", code: "\u{30b6}", alt: true),
                              aChar(row: 5, column: 2, sound: "zi", code: "\u{30b8}", alt: true),
                              aChar(row: 5, column: 3, sound: "zu", code: "\u{30ba}", alt: true),
                              aChar(row: 5, column: 4, sound: "ze", code: "\u{30bc}", alt: true),
                              aChar(row: 5, column: 5, sound: "zo", code: "\u{30be}", alt: true)]  // za zi zu ze zo

let myKataKanaaChars2f = [aChar(row: 1, column: 1, sound: "a", code: "\u{30a2}", alt: false),
                          aChar(row: 1, column: 2, sound: "i", code: "\u{30a4}", alt: false),
                          aChar(row: 1, column: 3, sound: "u", code: "\u{30a6}", alt: false),
                          aChar(row: 1, column: 4, sound: "e", code: "\u{30a8}", alt: false),
                          aChar(row: 1, column: 5, sound: "o", code: "\u{30aa}", alt: false),
                          aChar(row: 2, column: 1, sound: "ka", code: "\u{30ab}", alt: false),
                          aChar(row: 2, column: 2, sound: "ki", code: "\u{30ad}", alt: false),
                          aChar(row: 2, column: 3, sound: "ku", code: "\u{30af}", alt: false),
                          aChar(row: 2, column: 4, sound: "ke", code: "\u{30b1}", alt: false),
                          aChar(row: 2, column: 5, sound: "ko", code: "\u{30b3}", alt: true),
                          aChar(row: 2, column: 1, sound: "ga", code: "\u{30ac}", alt: true),
                          aChar(row: 3, column: 2, sound: "gi", code: "\u{30ae}", alt: true),
                          aChar(row: 3, column: 3, sound: "gu", code: "\u{30b0}", alt: true),
                          aChar(row: 3, column: 4, sound: "ge", code: "\u{30b2}", alt: true),
                          aChar(row: 3, column: 5, sound: "go", code: "\u{30b4}", alt: true),
                          aChar(row: 4, column: 1, sound: "sa", code: "\u{30b5}", alt: false),
                          aChar(row: 4, column: 2, sound: "shi", code: "\u{30b7}", alt: false),
                          aChar(row: 4, column: 3, sound: "su", code: "\u{30b9}", alt: false),
                          aChar(row: 4, column: 4, sound: "se", code: "\u{30bb}", alt: false),
                          aChar(row: 4, column: 5, sound: "so", code: "\u{30bd}", alt: false),
                          aChar(row: 5, column: 1, sound: "za", code: "\u{30b6}", alt: true),
                          aChar(row: 5, column: 2, sound: "zi", code: "\u{30b8}", alt: true),
                          aChar(row: 5, column: 3, sound: "zu", code: "\u{30ba}", alt: true),
                          aChar(row: 5, column: 4, sound: "ze", code: "\u{30bc}", alt: true),
                          aChar(row: 5, column: 5, sound: "zo", code: "\u{30be}", alt: true),  // za zi zu ze zo
                          aChar(row: 6, column: 1, sound: "ta", code: "\u{30bf}", alt: false),
                          aChar(row: 6, column: 2, sound: "ti", code: "\u{30c1}", alt: false),
                          aChar(row: 6, column: 3, sound: "tu", code: "\u{30c4}", alt: false),
                          aChar(row: 6, column: 4, sound: "te", code: "\u{30c6}", alt: false),
                          aChar(row: 6, column: 5, sound: "to", code: "\u{30c8}", alt: false),
                          aChar(row: 7, column: 1, sound: "da", code: "\u{30c0}", alt: true),
                          aChar(row: 7, column: 2, sound: "di", code: "\u{30c2}", alt: true),
                          aChar(row: 7, column: 3, sound: "du", code: "\u{30c5}", alt: true),
                          aChar(row: 7, column: 4, sound: "de", code: "\u{30c7}", alt: true),
                          aChar(row: 7, column: 5, sound: "do", code: "\u{30c9}", alt: true),
                          aChar(row: 8, column: 1, sound: "na", code: "\u{30ca}", alt: false),
                          aChar(row: 8, column: 2, sound: "ni", code: "\u{3cb}", alt: false),
                          aChar(row: 8, column: 3, sound: "nu", code: "\u{30cc}", alt: false),
                          aChar(row: 8, column: 4, sound: "ne", code: "\u{30cd}", alt: false),
                          aChar(row: 8, column: 5, sound: "no", code: "\u{30ce}", alt: false),
                          aChar(row: 9, column: 1, sound: "ha", code: "\u{30cf}", alt: false),
                          aChar(row: 9, column: 2, sound: "hi", code: "\u{30d2}", alt: false),
                          aChar(row: 9, column: 3, sound: "hu", code: "\u{30d5}", alt: false),
                          aChar(row: 9, column: 4, sound: "he", code: "\u{30d8}", alt: false),
                          aChar(row: 9, column: 5, sound: "ho", code: "\u{30db}", alt: false),
                          aChar(row: 9, column: 1, sound: "ba", code: "\u{30d0}", alt: false),
                          aChar(row: 9, column: 2, sound: "bi", code: "\u{30d3}", alt: false),
                          aChar(row: 9, column: 3, sound: "bu", code: "\u{30d6}", alt: false),
                          aChar(row: 9, column: 4, sound: "be", code: "\u{30d9}", alt: false),
                          aChar(row: 9, column: 5, sound: "bo", code: "\u{30dc}", alt: false),
                          aChar(row: 10, column: 1, sound: "pa", code: "\u{30d1}", alt: true),
                          aChar(row: 10, column: 2, sound: "pi", code: "\u{30d4}", alt: true),
                          aChar(row: 10, column: 3, sound: "pu", code: "\u{30d7}", alt: true),
                          aChar(row: 10, column: 4, sound: "pe", code: "\u{30da}", alt: true),
                          aChar(row: 10, column: 5, sound: "po", code: "\u{30dd}", alt: true),
                          aChar(row: 11, column: 1, sound: "ma", code: "\u{30de}", alt: false), // ma
                          aChar(row: 11, column: 2, sound: "mi", code: "\u{3df}", alt: false),
                          aChar(row: 11, column: 3, sound: "mu", code: "\u{30e0}", alt: false),
                          aChar(row: 11, column: 4, sound: "me", code: "\u{30e1}", alt: false),
                          aChar(row: 11, column: 5, sound: "mo", code: "\u{30e2}", alt: false),
                          aChar(row: 12, column: 1, sound: "ya", code: "\u{30e4}", alt: false), // ya
                          aChar(row: 12, column: 3, sound: "yu", code: "\u{30e6}", alt: false),
                          aChar(row: 12, column: 5, sound: "yo", code: "\u{30e8}", alt: false),
                          aChar(row: 13, column: 1, sound: "ra", code: "\u{30e9}", alt: false), // ra
                          aChar(row: 13, column: 2, sound: "ri", code: "\u{30ea}", alt: false),
                          aChar(row: 13, column: 3, sound: "ru", code: "\u{30eb}", alt: false),
                          aChar(row: 13, column: 4, sound: "re", code: "\u{30ec}", alt: false),
                          aChar(row: 13, column: 5, sound: "ro", code: "\u{30ed}", alt: false),
                          aChar(row: 14, column: 1, sound: "wa", code: "\u{30e9}", alt: false), // wa
                          aChar(row: 14, column: 5, sound: "wo", code: "\u{30ed}", alt: false),
                          aChar(row: 15, column: 3, sound: "n/m", code: "\u{30f3}", alt: false)]

let myHiraGanaaChars2f = [aChar(row: 1, column: 1, sound: "a", code: "\u{3042}", alt: false),
                          aChar(row: 1, column: 2, sound: "i", code: "\u{3044}", alt: false),
                          aChar(row: 1, column: 3, sound: "u", code: "\u{3046}", alt: false),
                          aChar(row: 1, column: 4, sound: "e", code: "\u{3048}", alt: false),
                          aChar(row: 1, column: 5, sound: "o", code: "\u{304a}", alt: false),
                          aChar(row: 2, column: 1, sound: "ka", code: "\u{304b}", alt: false),
                          aChar(row: 2, column: 2, sound: "ki", code: "\u{304d}", alt: false),
                          aChar(row: 2, column: 3, sound: "ku", code: "\u{304f}", alt: false),
                          aChar(row: 2, column: 4, sound: "ke", code: "\u{3051}", alt: false),
                          aChar(row: 2, column: 5, sound: "ko", code: "\u{3053}", alt: true),
                          aChar(row: 3, column: 1, sound: "ga", code: "\u{304c}", alt: true),
                          aChar(row: 3, column: 2, sound: "gi", code: "\u{304e}", alt: true),
                          aChar(row: 3, column: 3, sound: "gu", code: "\u{3050}", alt: true),
                          aChar(row: 3, column: 4, sound: "ge", code: "\u{3052}", alt: true),
                          aChar(row: 3, column: 5, sound: "go", code: "\u{3054}", alt: true),
                          aChar(row: 4, column: 1, sound: "sa", code: "\u{3055}", alt: false),
                          aChar(row: 4, column: 2, sound: "si", code: "\u{3057}", alt: false),
                          aChar(row: 4, column: 3, sound: "su", code: "\u{3059}", alt: false),
                          aChar(row: 4, column: 4, sound: "se", code: "\u{305b}", alt: false),
                          aChar(row: 4, column: 5, sound: "so", code: "\u{305d}", alt: false),
                          aChar(row: 5, column: 1, sound: "za", code: "\u{3056}", alt: true),
                          aChar(row: 5, column: 2, sound: "zi", code: "\u{3058}", alt: true),
                          aChar(row: 5, column: 3, sound: "zu", code: "\u{305a}", alt: true),
                          aChar(row: 5, column: 4, sound: "ze", code: "\u{305c}", alt: true),
                          aChar(row: 5, column: 5, sound: "zo", code: "\u{305e}", alt: true),  // za zi zu ze zo
                          aChar(row: 6, column: 1, sound: "ta", code: "\u{305f}", alt: false),
                          aChar(row: 6, column: 2, sound: "ti", code: "\u{3061}", alt: false),
                          aChar(row: 6, column: 3, sound: "tu", code: "\u{3064}", alt: false),
                          aChar(row: 6, column: 4, sound: "te", code: "\u{3066}", alt: false),
                          aChar(row: 6, column: 5, sound: "to", code: "\u{3068}", alt: false),
                          aChar(row: 7, column: 1, sound: "da", code: "\u{3060}", alt: true),
                          aChar(row: 7, column: 2, sound: "di", code: "\u{3062}", alt: true),
                          aChar(row: 7, column: 3, sound: "du", code: "\u{3065}", alt: true),
                          aChar(row: 7, column: 4, sound: "de", code: "\u{3067}", alt: true),
                          aChar(row: 7, column: 5, sound: "do", code: "\u{3069}", alt: true),
                          aChar(row: 8, column: 1, sound: "na", code: "\u{306a}", alt: false),
                          aChar(row: 8, column: 2, sound: "ni", code: "\u{36b}", alt: false),
                          aChar(row: 8, column: 3, sound: "nu", code: "\u{306c}", alt: false),
                          aChar(row: 8, column: 4, sound: "ne", code: "\u{306d}", alt: false),
                          aChar(row: 8, column: 5, sound: "no", code: "\u{306e}", alt: false),
                          aChar(row: 9, column: 1, sound: "ha", code: "\u{306f}", alt: false),
                          aChar(row: 9, column: 2, sound: "hi", code: "\u{3072}", alt: false),
                          aChar(row: 9, column: 3, sound: "hu", code: "\u{3075}", alt: false),
                          aChar(row: 9, column: 4, sound: "he", code: "\u{3078}", alt: false),
                          aChar(row: 9, column: 5, sound: "ho", code: "\u{307b}", alt: false),
                          aChar(row: 10, column: 1, sound: "ba", code: "\u{3070}", alt: true),
                          aChar(row: 10, column: 2, sound: "bi", code: "\u{3073}", alt: true),
                          aChar(row: 10, column: 3, sound: "bu", code: "\u{3076}", alt: true),
                          aChar(row: 10, column: 4, sound: "be", code: "\u{3079}", alt: true),
                          aChar(row: 10, column: 5, sound: "bo", code: "\u{307c}", alt: true),
                          aChar(row: 11, column: 1, sound: "pa", code: "\u{3071}", alt: true),
                          aChar(row: 11, column: 2, sound: "pi", code: "\u{3074}", alt: true),
                          aChar(row: 11, column: 3, sound: "pu", code: "\u{3077}", alt: true),
                          aChar(row: 11, column: 4, sound: "pe", code: "\u{307a}", alt: true),
                          aChar(row: 11, column: 5, sound: "po", code: "\u{307d}", alt: true),
                          aChar(row: 12, column: 1, sound: "ma", code: "\u{307e}", alt: false), // ma
                          aChar(row: 12, column: 2, sound: "mi", code: "\u{37f}", alt: false),
                          aChar(row: 12, column: 3, sound: "mu", code: "\u{3080}", alt: false),
                          aChar(row: 12, column: 4, sound: "me", code: "\u{3081}", alt: false),
                          aChar(row: 12, column: 5, sound: "mo", code: "\u{3082}", alt: false),
                          aChar(row: 13, column: 1, sound: "ya", code: "\u{3084}", alt: false), // ya
                          aChar(row: 13, column: 3, sound: "yu", code: "\u{3086}", alt: false),
                          aChar(row: 13, column: 5, sound: "yo", code: "\u{3088}", alt: false),
                          aChar(row: 14, column: 1, sound: "ra", code: "\u{3089}", alt: false), // ra
                          aChar(row: 14, column: 2, sound: "ri", code: "\u{308a}", alt: false),
                          aChar(row: 14, column: 3, sound: "ru", code: "\u{308b}", alt: false),
                          aChar(row: 14, column: 4, sound: "re", code: "\u{308c}", alt: false),
                          aChar(row: 14, column: 5, sound: "ro", code: "\u{308d}", alt: false),
                          aChar(row: 15, column: 1, sound: "wa", code: "\u{308f}", alt: false), // wa
                          aChar(row: 15, column: 2, sound: "wi", code: "\u{3090}", alt: false), // wi
                          aChar(row: 15, column: 3, sound: "we", code: "\u{3091}", alt: false), // wi
                          aChar(row: 15, column: 5, sound: "wo", code: "\u{3092}", alt: false),
                          aChar(row: 16, column: 3, sound: "n/m", code: "\u{3093}", alt: false),
                          aChar(row: 16, column: 1, sound: "mark", code: "\u{309a}", alt: true),
                          aChar(row: 16, column: 2, sound: "semi mark", code: "\u{309b}", alt: true),
                          aChar(row: 16, column: 3, sound: "semi mark 2", code: "\u{309c}", alt: true),
                          aChar(row: 16, column: 4, sound: "semi iteration  mark", code: "\u{309d}", alt: true),
                          aChar(row: 16, column: 5, sound: "iteration mark ", code: "\u{309e}", alt: true),
                          aChar(row: 16, column: 6, sound: "Didgraph yori", code: "\u{309f}", alt: true),
                          aChar(row: 16, column: 7, sound: "Double hyphen", code: "\u{30a0}", alt: true)]

let labelText: String = "\u{30ab}" + "\u{30ad}" + "\u{30af}" + "\u{30b1}" + "\u{30b3}"

let group1K: Group = Group {
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 1}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 2}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 3}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 4}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 5}))
}

let group2K: Group = Group {
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 6}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 7}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 8}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 8}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 10}))
}

let group3K: Group = Group {
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 11}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 12}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 13}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 14}))
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 15}))
}

let group4K: Group = Group {
    LineOfCharactersView(lineOfChars: myKataKanaaChars2f.filter({$0.row == 16}))
}

let group1G: Group = Group {
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 1}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 2}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 3}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 4}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 5}))
}

let group2G: Group = Group {
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 6}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 7}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 8}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 9}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 10}))
}

let group3G: Group = Group {
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 11}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 12}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 13}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 14}))
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 15}))
}

let group4G: Group = Group {
    LineOfCharactersView(lineOfChars: myHiraGanaaChars2f.filter({$0.row == 16}))
}

