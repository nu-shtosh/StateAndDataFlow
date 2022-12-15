//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var userManager: UserManager
    @EnvironmentObject private var appStorageManager: AppStorageManager
    
    var body: some View {
        Group {
            if userManager.isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
