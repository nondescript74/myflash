//
//  SettingsView.swift
//  myflash
//
//  Created by Zahirudeen Premji on 10/20/23.
//

import SwiftUI
import AVFoundation

struct SettingsView: View {
    @EnvironmentObject var langInUse: LanguageInUse
    
    @State private var language: langs = .jpja

    fileprivate enum langs: String, CaseIterable {
        case enuk = "en-UK"
        case enus = "en-US"
        case frfr = "fr-FR"
        case frca = "fr-CA"
        case jpja = "jp-JA"
    }
    fileprivate enum msgs:String {
        case sv = "User Settings: "
        case cfsv = "CFBundleShortVersionString"
        case cfb = "CFBundleVersion"
        case z = "Hello, Z"
        case vers = "Version: "
        case build = "Build: "
        case lang = "Language: "
        case langset = "Language set to: "
        case nvn = "No Version #???"
        case nbn = "No Build #???"
        
    }

    var body: some View {
        NavigationView {
            Form {
            Section {
                Text(msgs.sv.rawValue).font(.largeTitle).bold()
                Text(msgs.vers.rawValue + "\(Bundle.main.infoDictionary?[msgs.cfsv.rawValue] as? String ?? msgs.nvn.rawValue)")
                Text(msgs.build.rawValue + "\(Bundle.main.infoDictionary?[msgs.cfb.rawValue] as? String ?? msgs.nbn.rawValue)")
                Text(msgs.lang.rawValue + language.rawValue)
            }
            
            Section {
                
                Picker("Language", selection: $language) {
                    ForEach(langs.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                
            }
        }
            
            .padding()
        }
        .navigationBarTitleDisplayMode(.automatic)
        .environmentObject(langInUse)
    }
}

#Preview {
    SettingsView()
        .environmentObject(LanguageInUse())
}
