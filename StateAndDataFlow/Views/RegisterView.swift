//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var appStorageManager = AppStorageManager()

    @State private var isContentShow = false

    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $appStorageManager.userName)
                    .multilineTextAlignment(.center)
                Text(appStorageManager.userName.count.formatted())
                    .foregroundColor(appStorageManager.userName.count > 2 ? Color.green : Color.red)
                    .padding(.trailing)
            }
            Button(action: { appStorageManager.userIsRegister = true } ) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(appStorageManager.userName.count > 2 ? false : true)
        }
        .fullScreenCover(isPresented: $isContentShow) { }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
