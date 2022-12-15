//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    @StateObject private var appStorageManager = AppStorageManager()

    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
                .environmentObject(appStorageManager)
        }
    }
}
