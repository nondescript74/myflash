//
//  LanguageInUse.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/7/23.
//

import Foundation

class LanguageInUse: ObservableObject {
    // MARK: - Publisher
    @Published var language: String = ""
    
    // MARK: - Properties
    fileprivate enum msgs: String {
        case langinuse = "Language In Use: "
        case add = "Added: "
        case remove = "set to empty string "
        case changed = "Changed: "
    }
    @MainActor
    // MARK: - Methods
    func change(lang: String) {
        self.language = language
#if DEBUG
        print(msgs.langinuse.rawValue + msgs.changed.rawValue)
#endif
    }
    
//    func add(lang: String) {
//        if !self.language.contains(lang) {  // user may have hit the change button multiple times
//            self.language = lang
//#if DEBUG
//            print(msgs.langinuse.rawValue + msgs.add.rawValue + lang)
//#endif
//        }
//    }
//    
//    func remove(lang: String) {
//        self.language = ""
//        
//#if DEBUG
//        print(msgs.langinuse.rawValue + msgs.remove.rawValue)
//#endif
//        
//    }
}
