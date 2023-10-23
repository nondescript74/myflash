//
//  PageOfCharactersView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 9/7/23.
//

import SwiftUI

struct PageOfCharactersView: View {
//    @EnvironmentObject var langInUse: LanguageInUse
    
    @State private var myLang: Bool = false
    
    var body: some View {
        VStack {
            Button("Choose Japanese Dialect") {
                myLang.toggle()
            }
            Spacer()
            myLang ? group1K : group1G
            myLang ? group2K : group2G
            myLang ? group3K : group3G
            myLang ? group4K : group4G
            
        }
    }
}

#Preview {
    PageOfCharactersView()
//        .environmentObject(LanguageInUse())
}
