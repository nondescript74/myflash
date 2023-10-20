//
//  SettingsView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 10/20/23.
//

import SwiftUI
import AVFoundation

struct SettingsView: View {
//    @EnvironmentObject var langInUse: LanguageInUse
//    
//    @State private var selectedFlavor: Languagez = .English
//    let speechSynthesizer = AVSpeechSynthesizer()
//
//    enum Languagez: String, CaseIterable, Identifiable {
//        case English, Japanese, French
//        var id: Self { self }
//    }
//    fileprivate func getSelectedLanguage() -> String {
//        let current = selectedFlavor.rawValue
//        return current
//    }
    
    fileprivate enum msgs:String {
        case sv = "User Settings: "
        case cfsv = "CFBundleShortVersionString"
        case cfb = "CFBundleVersion"
        case z = "Hello, Z"
        case vers = "Version: "
        case build = "Build: "
//        case lang = "Language: "
//        case langset = "Language set to: "
        case nvn = "No Version #???"
        case nbn = "No Build #???"
        
    }

    var body: some View {
        NavigationView {
            VStack {
                Text(msgs.sv.rawValue).font(.largeTitle).bold()
                Text(msgs.vers.rawValue + "\(Bundle.main.infoDictionary?[msgs.cfsv.rawValue] as? String ?? msgs.nvn.rawValue)")
                Text(msgs.build.rawValue + "\(Bundle.main.infoDictionary?[msgs.cfb.rawValue] as? String ?? msgs.nbn.rawValue)")
//                Text(msgs.lang.rawValue + langInUse.language)
//                Picker("Language", selection: $selectedFlavor) {
//                    ForEach(Languagez.allCases) { flavor in
//                        Text(flavor.rawValue.capitalized)
//                    }
//                }
            }.padding()
        }
        .navigationBarTitleDisplayMode(.automatic)
//        .environmentObject(langInUse)
    }
}

#Preview {
    SettingsView()
//        .environmentObject(LanguageInUse())
}
