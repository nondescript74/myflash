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
            VStack {
                Text(msgs.sv.rawValue).font(.largeTitle).bold()
                Text(msgs.vers.rawValue + "\(Bundle.main.infoDictionary?[msgs.cfsv.rawValue] as? String ?? msgs.nvn.rawValue)")
                Text(msgs.build.rawValue + "\(Bundle.main.infoDictionary?[msgs.cfb.rawValue] as? String ?? msgs.nbn.rawValue)")
                Text(msgs.lang.rawValue + langInUse.language)
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
