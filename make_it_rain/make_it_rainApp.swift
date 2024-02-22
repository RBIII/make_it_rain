//
//  make_it_rainApp.swift
//  make_it_rain
//
//  Created by Robert Basso on 2/21/24.
//

import SwiftUI

@main
struct make_it_rainApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
