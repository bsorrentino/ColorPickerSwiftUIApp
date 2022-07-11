//
//  ColorPickerAppApp.swift
//  ColorPickerApp
//
//  Created by Bartolomeo Sorrentino on 10/02/21.
//

import SwiftUI
import OSLog

public let logger = Logger(subsystem: "org.bsc.ColorPickerApp", category: "main")

@main
struct ColorPickerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .navigationTitle("Color Picker Demo")
                .frame( minWidth: 30, minHeight: 300 )
        }
        
    }
}
