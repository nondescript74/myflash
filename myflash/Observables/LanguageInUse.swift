//
//  LanguageInUse.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/7/23.
//

import Foundation

class LanguageInUse: ObservableObject {
    // MARK: - Publisher
    @Published var language: String
    
    init() {
        self.language = "jp-JA"
    }
    
    // MARK: - Properties
    fileprivate enum msgs: String {
        case langinuse = "Language In Use: "
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
    
}
