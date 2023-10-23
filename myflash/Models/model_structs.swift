//
//  model_structs.swift
//  myflash
//
//  Created by Zahirudeen Premji on 10/17/23.
//

import Foundation

struct ACharacter: Codable, Equatable, Hashable {
    var inEnglish: String
    var language: String
    
    static func == (lhs: ACharacter, rhs: ACharacter) -> Bool {
        if lhs.inEnglish == rhs.inEnglish && lhs.language == rhs.language {
            return true
        } else {
            return false
        }
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(inEnglish)
        hasher.combine(language)
    }
}

struct aChar: Codable, Equatable, Hashable {
    var row: Int
    var column: Int
    var sound: String
    var code: String
    var alt: Bool?
    
    static func == (lhs: aChar, rhs: aChar) -> Bool {
        if lhs.row == rhs.row && lhs.column == rhs.column && lhs.code == rhs.code {
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
struct Achar: Codable, Equatable, Hashable {
    var id: UUID = UUID()
    var row: Int
    var column: Int
    var sound: String
    var code: String
    var alt: Bool
    
    static func == (lhs: Achar, rhs: Achar) -> Bool {
        if lhs.row == rhs.row && lhs.column == rhs.column && lhs.id == rhs.id && lhs.code == rhs.code {
            return true
        } else {
            return false
        }
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(row)
        hasher.combine(column)
        hasher.combine(code)
        hasher.combine(alt)
    }
}

//struct AKanaArray2: Codable, Equatable, Hashable {
//    var arrayOfAChar: [aChar]
//    
//    static func == (lhs: AKanaArray2, rhs: AKanaArray2) -> Bool {
//        if lhs.arrayOfAChar == rhs.arrayOfAChar {
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(arrayOfAChar)
//    }
//}
//
//struct AKanaArray: Codable, Equatable, Hashable {
//    var arrayOfAChar: [Achar]
//    
//    static func == (lhs: AKanaArray, rhs: AKanaArray) -> Bool {
//        if lhs.arrayOfAChar == rhs.arrayOfAChar {
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(arrayOfAChar)
//    }
//}
/*
 ἄ
 GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA
 Unicode: U+1F04, UTF-8: E1 BC 84
 */
