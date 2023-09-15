//
//  helpers.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import Foundation


//let myKatakanaDictBig = NSDictionary(objects: [myFirRowOKKanaDict, mySecRowOKKanaDict, mythiRowOKKanaDict, myforRowOKKanaDict, myFifRowOKKanaDict, mySixRowOKKanaDict, mySevRowOKKanaDict, myEigRowOKKanaDict, myNinRowOKKanaDict, myTenRowOKKanaDict, myEleRowOKKanaDict],
//                                  forKeys: ["firstrow" as NSCopying, "secondrow" as NSCopying, "thirdrow" as NSCopying, "fourthrow" as NSCopying, "fifthrow" as NSCopying, "sixthrow" as NSCopying, "seventhrow" as NSCopying, "eighthrow" as NSCopying, "ninthrow" as NSCopying, "tenthrow" as NSCopying, "eleventhrow" as NSCopying]
//)

let labelText: String = "\u{30ab}" + "\u{30ad}" + "\u{30af}" + "\u{30b1}" + "\u{30b3}"

struct aChar: Codable, Equatable, Hashable {
    var row: Int
    var column: Int
    var sound: String
    var code: String
    
    static func == (lhs: aChar, rhs: aChar) -> Bool {
        if lhs.row == rhs.row && lhs.column == rhs.column {
            return true
        } else {
            return false
        }
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(row)
        hasher.combine(column)
        hasher.combine(code)
    }
}
//
//let aNewKataKana = [[0, "\u{30a2}", "a"], [1, "\u{30a4}", "e"], [2, "\u{30a6}", "u"], [3, "\u{30a8}", "e"], [4, "\u{30aa}", "o"],
//                    [6, "\u{30ab}", "ka"], [7, "\u{30ad}", "ki"], [8, "\u{30af}", "ku"], [9, "\u{30b1}", "ke"], [10, "\u{30b3}", "ko"],
//                    [11, "\u{30ac}", "ga"], [12, "\u{30ae}", "gi"], [13, "\u{30b0}", "gu"], [14, "\u{30b2}", "ge"], [15, "\u{30b4}", "go"],
//                    [16, "\u{30b5}", "sa"], [17, "\u{30b7}", "shi"], [18, "\u{30b9}", "su"], [19, "\u{30bb}", "se"], [20, "\u{30bd}", "so"],
//                    [21, "\u{30b6}", "za"], [22, "\u{30b8}", "zi"], [23, "\u{30ba}", "zu"], [24, "\u{30bc}", "ze"], [25, "\u{30be}", "zo"],
//                    [26, "\u{30bf}", "ta"], [27, "\u{30c1}", "chi"], [28, "\u{30c3}", "tsu"], [29, "\u{30c5}", "te"], [30, "\u{30c7}", "to"],
//                    [31, "\u{30c0}", "da"], [32, "\u{30c2}", "di"], [33, "\u{30c4}", "du"], [34, "\u{30c6}", "de"], [35, "\u{30c8}", "do"],
//                    [36, "\u{30ca}", "na"], [37, "\u{30cb}", "ni"], [38, "\u{30cc}", "nu"], [39, "\u{30cd}", "ne"], [40, "\u{30ce}", "no"],
//                    [41, "\u{30cf}", "ha"], [42, "\u{30d2}", "hi"], [43, "\u{30d5}", "hu"], [44, "\u{30d8}", "he"], [45, "\u{30db}", "ho"],
//                    [46, "\u{30d0}", "ba"], [47, "\u{30d3}", "bi"], [48, "\u{30d6}", "bu"], [49, "\u{30d9}", "be"], [50, "\u{30dc}", "bo"],
//                    [51, "\u{30d1}", "pa"], [52, "\u{30d4}", "pi"], [53, "\u{30d7}", "pu"], [54, "\u{30da}", "pe"], [55, "\u{30dd}", "po"],
//                    [56, "\u{30de}", "ma"], [57, "\u{30df}", "mi"], [58, "\u{30e0}", "mu"], [59, "\u{30b1}", "e1"], [60, "\u{30e2}", "mo"]].sorted(using: {$0[0] < $0[1]})
//
//
//let aNewKataKanaDict = NSDictionary(objects: [(0, "\u{30a2}"), (1, "\u{30a4}"), (2, "\u{30a6}"), (3, "\u{30a8}"), (4, "\u{30aa}"),
//                                           (6, "\u{30ab}"), (7, "\u{30ad}"), (8, "\u{30af}"), (9, "\u{30b1}"), (10, "\u{30b3}")],
//                                 forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying,
//                                           "ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying])

//let myKatakanaDict = NSDictionary(objects: ["\u{30a2}", "\u{30a4}", "\u{30a6}", "\u{30a8}", "\u{30aa}",
//                                            "\u{30ab}", "\u{30ad}", "\u{30af}", "\u{30b1}", "\u{30b3}",
//                                            "\u{30ac}", "\u{30ae}", "\u{30b0}", "\u{30b2}", "\u{30b4}",
//                                            "\u{30b5}", "\u{30b7}", "\u{30b9}", "\u{30bb}", "\u{30bd}",
//                                            "\u{30b6}", "\u{30b8}", "\u{30ba}", "\u{30bc}", "\u{30be}",
//                                            "\u{30bf}", "\u{30c1}", "\u{30c3}", "\u{30c5}", "\u{30c7}",
//                                            "\u{30c0}", "\u{30c2}", "\u{30c4}", "\u{30c6}", "\u{30c8}",
//                                            "\u{30ca}", "\u{30cb}", "\u{30cc}", "\u{30cd}", "\u{30ce}",
//                                            "\u{30cf}", "\u{30d2}", "\u{30d5}", "\u{30d8}", "\u{30db}",
//                                            "\u{30d0}", "\u{30d3}", "\u{30d6}", "\u{30d9}", "\u{30dc}",
//                                            "\u{30d1}", "\u{30d4}", "\u{30d7}", "\u{30da}", "\u{30dd}",
//                                            "\u{30de}", "\u{30df}", "\u{30e0}", "\u{30e1}", "\u{30e2}",
//                                            "\u{30e4}", "\u{30e6}", "\u{30e8}",
//                                            "\u{30e9}", "\u{30ea}", "\u{30eb}", "\u{30ec}", "\u{30ed}",
//                                            "\u{30ef}", "\u{30f0}", "\u{30f1}", "\u{30f2}",
//                                            "\u{30f3}", "\u{30f4}"] as [String],
//                                  forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying,
//                                            "ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying,
//                                            "ga" as NSCopying, "gi" as NSCopying, "gu" as NSCopying, "ge" as NSCopying, "go" as NSCopying,
//                                            "sa" as NSCopying, "shi" as NSCopying, "su" as NSCopying, "se" as NSCopying, "so" as NSCopying,
//                                            "za" as NSCopying, "zi" as NSCopying, "zu" as NSCopying, "ze" as NSCopying, "zo" as NSCopying,
//                                            "ta" as NSCopying, "chi" as NSCopying, "tsu" as NSCopying, "te" as NSCopying, "to" as NSCopying,
//                                            "da" as NSCopying, "de" as NSCopying, "du" as NSCopying, "de" as NSCopying, "do" as NSCopying,
//                                            "na" as NSCopying, "ni" as NSCopying, "nu" as NSCopying, "ne" as NSCopying, "no" as NSCopying,
//                                            "ha" as NSCopying, "hi" as NSCopying, "hu" as NSCopying, "he" as NSCopying, "ho" as NSCopying,
//                                            "ba" as NSCopying, "bi" as NSCopying, "bu" as NSCopying, "be" as NSCopying, "bo" as NSCopying,
//                                            "pa" as NSCopying, "pi" as NSCopying, "pu" as NSCopying, "pe" as NSCopying, "po" as NSCopying,
//                                            "ma" as NSCopying, "mi" as NSCopying, "mu" as NSCopying, "me" as NSCopying, "mo" as NSCopying,
//                                            "ya" as NSCopying, "yu" as NSCopying, "yo" as NSCopying,
//                                            "ra" as NSCopying, "ri" as NSCopying, "ru" as NSCopying, "re" as NSCopying, "ro" as NSCopying,
//                                            "wa" as NSCopying, "wi" as NSCopying, "we" as NSCopying, "wo" as NSCopying,
//                                            "n" as NSCopying, "vu" as NSCopying]
//)

//let aNewHiraGanaDict =  NSDictionary(objects: [(0, "\u{3042}"), (1, "\u{3044}"), (2, "\u{3046}"), (3, "\u{3048}"), (4, "\u{304a}"),
//                                            (5, "\u{304b}"), (6, "\u{304d}"), (7, "\u{304f}"), (8, "\u{3051}"), (9, "\u{3053}")],
//                                  forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying,
//                                            "ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying])
//
//let myHiraganaDict = NSDictionary(objects: ["\u{3042}", "\u{3044}", "\u{3046}", "\u{3048}", "\u{304a}",  // a i u e o
//                                            "\u{304b}", "\u{304d}", "\u{304f}", "\u{3051}", "\u{3053}",  // ka
//                                            "\u{304c}", "\u{304e}", "\u{3050}", "\u{3052}", "\u{3054}",  // ga
//                                            "\u{3055}", "\u{3057}", "\u{3059}", "\u{305b}", "\u{305d}",  // sa ...
//                                            "\u{3056}", "\u{3058}", "\u{305a}", "\u{305c}", "\u{305e}",  // za ...
//                                            "\u{305f}", "\u{3062}", "\u{3064}", "\u{3066}", "\u{3068}",  // ta ...
//                                            "\u{3060}", "\u{3063}", "\u{3065}", "\u{3067}", "\u{3069}",  // da ...
//                                            "\u{306a}", "\u{306b}", "\u{306c}", "\u{306d}", "\u{306e}",  // na ...
//                                            "\u{306f}", "\u{3072}", "\u{3075}", "\u{3078}", "\u{307b}",  // ha ...
//                                            "\u{3070}", "\u{3073}", "\u{3076}", "\u{3079}", "\u{307c}",  // ba ...
//                                            "\u{3071}", "\u{3074}", "\u{3077}", "\u{307a}", "\u{307d}",  // pa ..
//                                            "\u{307e}", "\u{307f}", "\u{3080}", "\u{3081}", "\u{3082}",  // ma ...
//                                            "\u{3084}", "\u{3086}", "\u{3088}",  // ya, yu yo
//                                            "\u{3089}", "\u{308a}", "\u{308b}", "\u{308c}", "\u{308d}",  // ra ri ru re ro
//                                            "\u{308f}", "\u{3090}", "\u{3091}", "\u{3092}",  //  wa wi we wo
//                                            "\u{3093}", "\u{3094}"] as [String],  // n vu
//                                  forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying,
//                                            "ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying,
//                                            "ga" as NSCopying, "gi" as NSCopying, "gu" as NSCopying, "ge" as NSCopying, "go" as NSCopying,
//                                            "sa" as NSCopying, "shi" as NSCopying, "su" as NSCopying, "se" as NSCopying, "so" as NSCopying,
//                                            "za" as NSCopying, "zi" as NSCopying, "zu" as NSCopying, "ze" as NSCopying, "zo" as NSCopying,
//                                            "ta" as NSCopying, "chi" as NSCopying, "tsu" as NSCopying, "te" as NSCopying, "to" as NSCopying,
//                                            "da" as NSCopying, "de" as NSCopying, "du" as NSCopying, "de" as NSCopying, "do" as NSCopying,
//                                            "na" as NSCopying, "ni" as NSCopying, "nu" as NSCopying, "ne" as NSCopying, "no" as NSCopying,
//                                            "ha" as NSCopying, "hi" as NSCopying, "hu" as NSCopying, "he" as NSCopying, "ho" as NSCopying,
//                                            "ba" as NSCopying, "bi" as NSCopying, "bu" as NSCopying, "be" as NSCopying, "bo" as NSCopying,
//                                            "pa" as NSCopying, "pi" as NSCopying, "pu" as NSCopying, "pe" as NSCopying, "po" as NSCopying,
//                                            "ma" as NSCopying, "mi" as NSCopying, "mu" as NSCopying, "me" as NSCopying, "mo" as NSCopying,
//                                            "ya" as NSCopying, "yu" as NSCopying, "yo" as NSCopying,
//                                            "ra" as NSCopying, "ri" as NSCopying, "ru" as NSCopying, "re" as NSCopying, "ro" as NSCopying,
//                                            "wa" as NSCopying, "wi" as NSCopying, "we" as NSCopying, "wo" as NSCopying,
//                                            "n" as NSCopying, "vu" as NSCopying]
//)
//
////let myFirRowOKKanaDict2 = NSDictionary(objects: aNewKKanaDict.allValues, forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying])
////
////let mySecRowOKKanaDict2 = NSDictionary(objects: aNewKKanaDict.allValues, forKeys: ["ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying])
////
////let myFirRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "a")! as! String, myKatakanaDict.value(forKey: "i")!as! String, myKatakanaDict.value(forKey: "u")!as! String, myKatakanaDict.value(forKey: "e")!as! String, myKatakanaDict.value(forKey: "o")!as! String] as [String], forKey: "firstrow" as NSCopying)
////
////let mySecRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "ka")!, myKatakanaDict.value(forKey: "ki")!, myKatakanaDict.value(forKey: "ku")!, myKatakanaDict.value(forKey: "ke")!, myKatakanaDict.value(forKey: "ko")!], forKey: "firstrow" as NSCopying)
////
////let mythiRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "a")! as! String, myKatakanaDict.value(forKey: "i")!as! String, myKatakanaDict.value(forKey: "u")!as! String, myKatakanaDict.value(forKey: "e")!as! String, myKatakanaDict.value(forKey: "o")!as! String] as [String], forKey: "firstrow" as NSCopying)
////
////let myforRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "ka")!, myKatakanaDict.value(forKey: "ki")!, myKatakanaDict.value(forKey: "ku")!, myKatakanaDict.value(forKey: "ke")!, myKatakanaDict.value(forKey: "ko")!], forKey: "firstrow" as NSCopying)
////
////let myFifRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "a")! as! String, myKatakanaDict.value(forKey: "i")!as! String, myKatakanaDict.value(forKey: "u")!as! String, myKatakanaDict.value(forKey: "e")!as! String, myKatakanaDict.value(forKey: "o")!as! String] as [String], forKey: "firstrow" as NSCopying)
////
////let mySixRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "ka")!, myKatakanaDict.value(forKey: "ki")!, myKatakanaDict.value(forKey: "ku")!, myKatakanaDict.value(forKey: "ke")!, myKatakanaDict.value(forKey: "ko")!], forKey: "firstrow" as NSCopying)
////
////let mySevRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "a")! as! String, myKatakanaDict.value(forKey: "i")!as! String, myKatakanaDict.value(forKey: "u")!as! String, myKatakanaDict.value(forKey: "e")!as! String, myKatakanaDict.value(forKey: "o")!as! String] as [String], forKey: "firstrow" as NSCopying)
////
////let myEigRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "ka")!, myKatakanaDict.value(forKey: "ki")!, myKatakanaDict.value(forKey: "ku")!, myKatakanaDict.value(forKey: "ke")!, myKatakanaDict.value(forKey: "ko")!], forKey: "firstrow" as NSCopying)
////
////let myNinRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "a")! as! String, myKatakanaDict.value(forKey: "i")!as! String, myKatakanaDict.value(forKey: "u")!as! String, myKatakanaDict.value(forKey: "e")!as! String, myKatakanaDict.value(forKey: "o")!as! String] as [String], forKey: "firstrow" as NSCopying)
////
////let myTenRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "ka")!, myKatakanaDict.value(forKey: "ki")!, myKatakanaDict.value(forKey: "ku")!, myKatakanaDict.value(forKey: "ke")!, myKatakanaDict.value(forKey: "ko")!], forKey: "firstrow" as NSCopying)
////
////let myEleRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "a")! as! String, myKatakanaDict.value(forKey: "i")!as! String, myKatakanaDict.value(forKey: "u")!as! String, myKatakanaDict.value(forKey: "e")!as! String, myKatakanaDict.value(forKey: "o")!as! String] as [String], forKey: "firstrow" as NSCopying)
////
////let myTweRowOKKanaDict = NSDictionary(object: [myKatakanaDict.value(forKey: "ka")!, myKatakanaDict.value(forKey: "ki")!, myKatakanaDict.value(forKey: "ku")!, myKatakanaDict.value(forKey: "ke")!, myKatakanaDict.value(forKey: "ko")!], forKey: "firstrow" as NSCopying)
//// 
//// let myFirstRowOfKana = NSDictionary(objects: ["\u{30a2}", "\u{30a4}", "\u{30a6}", "\u{30a8}", "\u{30aa}"] as [String],
////                                     forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying])
////
//// let mySecondRowOfKana = NSDictionary(objects: ["\u{30ab}", "\u{30ad}", "\u{30af}", "\u{30b1}", "\u{30b3}"]as [String],
////                                      forKeys: ["ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying])
////
//// let mySecondPlusRowOfKana = NSDictionary(objects: ["\u{30ac}", "\u{30ae}", "\u{30b0}", "\u{30b2}", "\u{30b4}"]as [String],
////                                          forKeys: ["ga" as NSCopying, "gi" as NSCopying, "gu" as NSCopying, "ge" as NSCopying, "go" as NSCopying])
////
//// let myThirdRowOfKana = NSDictionary(objects: ["\u{30b5}", "\u{30b7}", "\u{30b9}", "\u{30bb}", "\u{30bd}"]as [String],
////                                     forKeys: ["sa" as NSCopying, "shi" as NSCopying, "su" as NSCopying, "se" as NSCopying, "so" as NSCopying])
////
//// let myThirdPlusRowOfKana = NSDictionary(objects: ["\u{30b6}", "\u{30b8}", "\u{30ba}", "\u{30bc}", "\u{30be}"]as [String],
////                                         forKeys: ["za" as NSCopying, "zi" as NSCopying, "zu" as NSCopying, "ze" as NSCopying, "zo" as NSCopying])
////
//// let myFourthRowOfKana = NSDictionary(objects: ["\u{30bf}", "\u{30c1}", "\u{30c3}", "\u{30c5}", "\u{30c7}"]as [String],
////                                      forKeys: ["ta" as NSCopying, "chi" as NSCopying, "tsu" as NSCopying, "te" as NSCopying, "to" as NSCopying])
////
//// let myFourthRowPlusOfKana = NSDictionary(objects: ["\u{30c0}", "\u{30c2}", "\u{30c4}", "\u{30c6}", "\u{30c8}"]as [String],
////                                          forKeys: ["da" as NSCopying, "de" as NSCopying, "du" as NSCopying, "de" as NSCopying, "do" as NSCopying])
////
//// let myFifthRowOfKana = NSDictionary(objects: ["\u{30ca}", "\u{30cc}", "\u{30ce}", "\u{30d0}", "\u{30d2}"]as [String],
////                                     forKeys: ["na" as NSCopying, "ni" as NSCopying, "nu" as NSCopying, "ne" as NSCopying, "no" as NSCopying])
////
//// let mySixthRowOfKana = NSDictionary(objects: ["\u{30cf}", "\u{30d2}", "\u{30d5}", "\u{30d8}", "\u{30db}"]as [String],
////                                     forKeys: ["ha" as NSCopying, "hi" as NSCopying, "hu" as NSCopying, "he" as NSCopying, "ho" as NSCopying])
////
//// let mySixthRowPlusOfKana = NSDictionary(objects: ["\u{30d0}", "\u{30d3}", "\u{30d6}", "\u{30d9}", "\u{30dc}"]as [String],
////                                         forKeys: ["ba" as NSCopying, "bi" as NSCopying, "bu" as NSCopying, "be" as NSCopying, "bo" as NSCopying])
////
//// let mySixthRowPlusPlusOfKana = NSDictionary(objects: ["\u{30d1}", "\u{30d4}", "\u{30d7}", "\u{30da}", "\u{30dd}"]as [String],
////                                             forKeys: ["pa" as NSCopying, "pi" as NSCopying, "pu" as NSCopying, "pe" as NSCopying, "po" as NSCopying])
////
//// let mySeventhRowOfKana = NSDictionary(objects: ["\u{30de}", "\u{30df}", "\u{30e0}", "\u{30e1}", "\u{30e2}"],
////                                       forKeys: ["ma" as NSCopying, "mi" as NSCopying, "mu" as NSCopying, "me" as NSCopying, "mo" as NSCopying])
////
//// let myEightRowOfKana = NSDictionary(objects: ["\u{30de}", "\u{30e0}", "\u{30e2}"]as [String],
////                                     forKeys: ["ya" as NSCopying, "yu" as NSCopying, "yo" as NSCopying])
////
//// let myNinthRowOfKana = NSDictionary(objects: ["\u{30e9}", "\u{30ea}", "\u{30eb}", "\u{30ec}", "\u{30ed}"]as [String],
////                                     forKeys: ["ra" as NSCopying, "ri" as NSCopying, "ru" as NSCopying, "re" as NSCopying, "ro" as NSCopying])
////
//// let myTenthRowOfKana = NSDictionary(objects: ["\u{30ef}", "\u{30f0}", "\u{30f1}", "\u{30f2}"]as [String],
////                                     forKeys: ["wa" as NSCopying, "wi" as NSCopying, "we" as NSCopying, "wo" as NSCopying])
////
//// let myEleventhRowOfKana = NSDictionary(objects: ["\u{30f3}", "\u{30f4}"]as [String],
////                                        forKeys: ["n" as NSCopying, "vu" as NSCopying])
////
////let myTwelfthRowOfKana =  NSDictionary(objects: ["\u{30f7}", "\u{30f8}", "\u{30f9}", "\u{30fa}"]as [String],
////                                                              forKeys: ["va" as NSCopying, "vi" as NSCopying, "ve" as NSCopying, "vo" as NSCopying])
//// 
//
//
//// Hiragana
//
//let myFirstRowOfHiragana = NSDictionary(objects: ["\u{30a2}", "\u{30a4}", "\u{30a6}", "\u{30a8}", "\u{30aa}"] as [String],
//                                    forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying])
//
//let mySecondRowOfHiragana = NSDictionary(objects: ["\u{30ab}", "\u{30ad}", "\u{30af}", "\u{30b1}", "\u{30b3}"]as [String],
//                                     forKeys: ["ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying])
//
//let mySecondPlusRowOfHiragana = NSDictionary(objects: ["\u{30ac}", "\u{30ae}", "\u{30b0}", "\u{30b2}", "\u{30b4}"]as [String],
//                                         forKeys: ["ga" as NSCopying, "gi" as NSCopying, "gu" as NSCopying, "ge" as NSCopying, "go" as NSCopying])
//
//let myThirdRowOfHiragana = NSDictionary(objects: ["\u{30b5}", "\u{30b7}", "\u{30b9}", "\u{30bb}", "\u{30bd}"]as [String],
//                                    forKeys: ["sa" as NSCopying, "shi" as NSCopying, "su" as NSCopying, "se" as NSCopying, "so" as NSCopying])
//
//let myThirdPlusRowOfHiragana = NSDictionary(objects: ["\u{30b6}", "\u{30b8}", "\u{30ba}", "\u{30bc}", "\u{30be}"]as [String],
//                                        forKeys: ["za" as NSCopying, "zi" as NSCopying, "zu" as NSCopying, "ze" as NSCopying, "zo" as NSCopying])
//
//let myFourthRowOfHiragana = NSDictionary(objects: ["\u{30bf}", "\u{30c1}", "\u{30c3}", "\u{30c5}", "\u{30c7}"]as [String],
//                                     forKeys: ["ta" as NSCopying, "chi" as NSCopying, "tsu" as NSCopying, "te" as NSCopying, "to" as NSCopying])
//
//let myFourthRowPlusOfHiragana = NSDictionary(objects: ["\u{30c0}", "\u{30c2}", "\u{30c4}", "\u{30c6}", "\u{30c8}"]as [String],
//                                         forKeys: ["da" as NSCopying, "de" as NSCopying, "du" as NSCopying, "de" as NSCopying, "do" as NSCopying])
//
//let myFifthRowOfHiragana = NSDictionary(objects: ["\u{30ca}", "\u{30cc}", "\u{30ce}", "\u{30d0}", "\u{30d2}"]as [String],
//                                    forKeys: ["na" as NSCopying, "ni" as NSCopying, "nu" as NSCopying, "ne" as NSCopying, "no" as NSCopying])
//
//let mySixthRowOfHiragana = NSDictionary(objects: ["\u{30cf}", "\u{30d2}", "\u{30d5}", "\u{30d8}", "\u{30db}"]as [String],
//                                    forKeys: ["ha" as NSCopying, "hi" as NSCopying, "hu" as NSCopying, "he" as NSCopying, "ho" as NSCopying])
//
//let mySixthRowPlusOfHiragana = NSDictionary(objects: ["\u{30d0}", "\u{30d3}", "\u{30d6}", "\u{30d9}", "\u{30dc}"]as [String],
//                                        forKeys: ["ba" as NSCopying, "bi" as NSCopying, "bu" as NSCopying, "be" as NSCopying, "bo" as NSCopying])
//
//let mySixthRowPlusPlusOfHiragana = NSDictionary(objects: ["\u{30d1}", "\u{30d4}", "\u{30d7}", "\u{30da}", "\u{30dd}"]as [String],
//                                            forKeys: ["pa" as NSCopying, "pi" as NSCopying, "pu" as NSCopying, "pe" as NSCopying, "po" as NSCopying])
//
//let mySeventhRowOfHiragana = NSDictionary(objects: ["\u{30de}", "\u{30df}", "\u{30e0}", "\u{30e1}", "\u{30e2}"],
//                                      forKeys: ["ma" as NSCopying, "mi" as NSCopying, "mu" as NSCopying, "me" as NSCopying, "mo" as NSCopying])
//
//let myEightRowOfHiragana = NSDictionary(objects: ["\u{30de}", "\u{30e0}", "\u{30e2}"]as [String],
//                                    forKeys: ["ya" as NSCopying, "yu" as NSCopying, "yo" as NSCopying])
//
//let myNinthRowOfHiragana = NSDictionary(objects: ["\u{30e9}", "\u{30ea}", "\u{30eb}", "\u{30ec}", "\u{30ed}"]as [String],
//                                    forKeys: ["ra" as NSCopying, "ri" as NSCopying, "ru" as NSCopying, "re" as NSCopying, "ro" as NSCopying])
//
//let myTenthRowOfHiragana = NSDictionary(objects: ["\u{30ef}", "\u{30f0}", "\u{30f1}", "\u{30f2}"]as [String],
//                                    forKeys: ["wa" as NSCopying, "wi" as NSCopying, "we" as NSCopying, "wo" as NSCopying])
//
//let myEleventhRowOfHiragana = NSDictionary(objects: ["\u{30f3}", "\u{30f4}"]as [String],
//                                       forKeys: ["n" as NSCopying, "vu" as NSCopying])
//
//let myTwelfthRowOfHiragana =  NSDictionary(objects: ["\u{30f7}", "\u{30f8}", "\u{30f9}", "\u{30fa}"]as [String],
//                                                             forKeys: ["va" as NSCopying, "vi" as NSCopying, "ve" as NSCopying, "vo" as NSCopying])
