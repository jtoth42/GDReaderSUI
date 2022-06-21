//
//  GDReaderSUIApp.swift
//  GDReaderSUI
//
//  Created by Jim on 5/25/22.
//

import SwiftUI

@main
struct GDReaderSUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .frame(minWidth: 800, minHeight: 700)
        }
        .windowStyle(.hiddenTitleBar)
        .windowToolbarStyle(.unifiedCompact)
    }
}
