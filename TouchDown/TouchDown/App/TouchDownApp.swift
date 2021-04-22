//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Mac Pro Sam on 4/14/21.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
