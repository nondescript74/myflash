//
//  helpers.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/4/23.
//

import Foundation


let myFirstRowOfKana = NSDictionary(objects: ["\u{30a2}", "\u{30a4}", "\u{30a6}", "\u{30a8}", "\u{30aa}"] as [String],
                                    forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying])

let mySecondRowOfKana = NSDictionary(objects: ["\u{30ab}", "\u{30ad}", "\u{30af}", "\u{30b1}", "\u{30b3}"]as [String],
                                    forKeys: ["ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying])

let mySecondPlusRowOfKana = NSDictionary(objects: ["\u{30ac}", "\u{30ae}", "\u{30b0}", "\u{30b2}", "\u{30b4}"]as [String],
                                    forKeys: ["ga" as NSCopying, "gi" as NSCopying, "gu" as NSCopying, "ge" as NSCopying, "go" as NSCopying])

let myThirdRowOfKana = NSDictionary(objects: ["\u{30b5}", "\u{30b7}", "\u{30b9}", "\u{30bb}", "\u{30bd}"]as [String],
                                    forKeys: ["sa" as NSCopying, "shi" as NSCopying, "su" as NSCopying, "se" as NSCopying, "so" as NSCopying])

let myThirdPlusRowOfKana = NSDictionary(objects: ["\u{30b6}", "\u{30b8}", "\u{30ba}", "\u{30bc}", "\u{30be}"]as [String],
                                    forKeys: ["za" as NSCopying, "zi" as NSCopying, "zu" as NSCopying, "ze" as NSCopying, "zo" as NSCopying])

let myFourthRowOfKana = NSDictionary(objects: ["\u{30bf}", "\u{30c1}", "\u{30c3}", "\u{30c5}", "\u{30c7}"]as [String],
                                    forKeys: ["ta" as NSCopying, "chi" as NSCopying, "tsu" as NSCopying, "te" as NSCopying, "to" as NSCopying])

let myFourthRowPlusOfKana = NSDictionary(objects: ["\u{30c0}", "\u{30c2}", "\u{30c4}", "\u{30c6}", "\u{30c8}"]as [String],
                                    forKeys: ["da" as NSCopying, "de" as NSCopying, "du" as NSCopying, "de" as NSCopying, "do" as NSCopying])

let myFifthRowOfKana = NSDictionary(objects: ["\u{30ca}", "\u{30cc}", "\u{30ce}", "\u{30d0}", "\u{30d2}"]as [String],
                                    forKeys: ["na" as NSCopying, "ni" as NSCopying, "nu" as NSCopying, "ne" as NSCopying, "no" as NSCopying])

let mySixthRowOfKana = NSDictionary(objects: ["\u{30cf}", "\u{30d2}", "\u{30d5}", "\u{30d8}", "\u{30db}"]as [String],
                                    forKeys: ["ha" as NSCopying, "hi" as NSCopying, "hu" as NSCopying, "he" as NSCopying, "ho" as NSCopying])

let mySixthRowPlusOfKana = NSDictionary(objects: ["\u{30d0}", "\u{30d3}", "\u{30d6}", "\u{30d9}", "\u{30dc}"]as [String],
                                    forKeys: ["ba" as NSCopying, "bi" as NSCopying, "bu" as NSCopying, "be" as NSCopying, "bo" as NSCopying])

let mySixthRowPlusPlusOfKana = NSDictionary(objects: ["\u{30d1}", "\u{30d4}", "\u{30d7}", "\u{30da}", "\u{30dd}"]as [String],
                                    forKeys: ["pa" as NSCopying, "pi" as NSCopying, "pu" as NSCopying, "pe" as NSCopying, "po" as NSCopying])

let mySeventhRowOfKana = NSDictionary(objects: ["\u{30de}", "\u{30df}", "\u{30e0}", "\u{30e1}", "\u{30e2}"],
                                    forKeys: ["ma" as NSCopying, "mi" as NSCopying, "mu" as NSCopying, "me" as NSCopying, "mo" as NSCopying])

let myEightRowOfKana = NSDictionary(objects: ["\u{30de}", "\u{30e0}", "\u{30e2}"]as [String],
                                    forKeys: ["ya" as NSCopying, "yu" as NSCopying, "yo" as NSCopying])

let myNinthRowOfKana = NSDictionary(objects: ["\u{30e9}", "\u{30ea}", "\u{30eb}", "\u{30ec}", "\u{30ed}"]as [String],
                                    forKeys: ["ra" as NSCopying, "ri" as NSCopying, "ru" as NSCopying, "re" as NSCopying, "ro" as NSCopying])

let myTenthRowOfKana = NSDictionary(objects: ["\u{30ef}", "\u{30f0}", "\u{30f1}", "\u{30f2}"]as [String],
                                    forKeys: ["wa" as NSCopying, "wi" as NSCopying, "we" as NSCopying, "wo" as NSCopying])

let myEleventhRowOfKana = NSDictionary(objects: ["\u{30f3}", "\u{30f4}"]as [String],
                                    forKeys: ["n" as NSCopying, "vu" as NSCopying])

let myKatakanaDict = NSDictionary(objects: ["\u{30a2}", "\u{30a4}", "\u{30a6}", "\u{30a8}", "\u{30aa}",
                                            "\u{30ab}", "\u{30ad}", "\u{30af}", "\u{30b1}", "\u{30b3}",
                                             "\u{30ac}", "\u{30ae}", "\u{30b0}", "\u{30b2}", "\u{30b4}",
                                            "\u{30b5}", "\u{30b7}", "\u{30b9}", "\u{30bb}", "\u{30bd}",
                                             "\u{30b6}", "\u{30b8}", "\u{30ba}", "\u{30bc}", "\u{30be}",
                                             "\u{30bf}", "\u{30c1}", "\u{30c3}", "\u{30c5}", "\u{30c7}",
                                             "\u{30c0}", "\u{30c2}", "\u{30c4}", "\u{30c6}", "\u{30c8}",
                                             "\u{30ca}", "\u{30cc}", "\u{30ce}", "\u{30d0}", "\u{30d2}",
                                             "\u{30cf}", "\u{30d2}", "\u{30d5}", "\u{30d8}", "\u{30db}",
                                             "\u{30d0}", "\u{30d3}", "\u{30d6}", "\u{30d9}", "\u{30dc}",
                                             "\u{30d1}", "\u{30d4}", "\u{30d7}", "\u{30da}", "\u{30dd}",
                                             "\u{30de}", "\u{30df}", "\u{30e0}", "\u{30e1}", "\u{30e2}",
                                             "\u{30de}", "\u{30e0}", "\u{30e2}",
                                             "\u{30e9}", "\u{30ea}", "\u{30eb}", "\u{30ec}", "\u{30ed}",
                                              "\u{30ef}", "\u{30f0}", "\u{30f1}", "\u{30f2}",
                                              "\u{30f3}", "\u{30f4}"] as [String],
                                  forKeys: ["a" as NSCopying, "i" as NSCopying, "u" as NSCopying, "e" as NSCopying, "o" as NSCopying,
                                            "ka" as NSCopying, "ki" as NSCopying, "ku" as NSCopying, "ke" as NSCopying, "ko" as NSCopying,
                                            "ga" as NSCopying, "gi" as NSCopying, "gu" as NSCopying, "ge" as NSCopying, "go" as NSCopying,
                                            "sa" as NSCopying, "shi" as NSCopying, "su" as NSCopying, "se" as NSCopying, "so" as NSCopying,
                                            "za" as NSCopying, "zi" as NSCopying, "zu" as NSCopying, "ze" as NSCopying, "zo" as NSCopying,
                                            "ta" as NSCopying, "chi" as NSCopying, "tsu" as NSCopying, "te" as NSCopying, "to" as NSCopying,
                                            "da" as NSCopying, "de" as NSCopying, "du" as NSCopying, "de" as NSCopying, "do" as NSCopying,
                                            "na" as NSCopying, "ni" as NSCopying, "nu" as NSCopying, "ne" as NSCopying, "no" as NSCopying,
                                            "ha" as NSCopying, "hi" as NSCopying, "hu" as NSCopying, "he" as NSCopying, "ho" as NSCopying,
                                            "ba" as NSCopying, "bi" as NSCopying, "bu" as NSCopying, "be" as NSCopying, "bo" as NSCopying,
                                            "pa" as NSCopying, "pi" as NSCopying, "pu" as NSCopying, "pe" as NSCopying, "po" as NSCopying,
                                             "ma" as NSCopying, "mi" as NSCopying, "mu" as NSCopying, "me" as NSCopying, "mo" as NSCopying,
                                            "ya" as NSCopying, "yu" as NSCopying, "yo" as NSCopying,
                                             "ra" as NSCopying, "ri" as NSCopying, "ru" as NSCopying, "re" as NSCopying, "ro" as NSCopying,
                                             "wa" as NSCopying, "wi" as NSCopying, "we" as NSCopying, "wo" as NSCopying,
                                             "n" as NSCopying, "vu" as NSCopying]
                                           )


/*
 ン
 KATAKANA LETTER N
 Unicode: U+30F3, UTF-8: E3 83 B3
 ヴ
 KATAKANA LETTER VU
 Unicode: U+30F4, UTF-8: E3 83 B4
 */

