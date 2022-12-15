//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var appStorageManager = AppStorageManager()
    @EnvironmentObject private var userManager: UserManager

    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $appStorageManager.userName)
                    .multilineTextAlignment(.center)
                Text(appStorageManager.userName.count.formatted())
                    .foregroundColor(appStorageManager.userName.count > 2 ? Color.green : Color.red)
                    .padding(.trailing)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(appStorageManager.userName.count > 2 ? false : true)
        }
    }

    private func registerUser() {
        if !appStorageManager.userName.isEmpty {
            userManager.name = appStorageManager.userName
            userManager.isRegister = true
            appStorageManager.userIsRegister = true

        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
