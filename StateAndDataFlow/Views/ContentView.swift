//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var appStorageManager: AppStorageManager
    
    var body: some View {
        VStack {
            Text("Hi, \(appStorageManager.userName)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            
            ButtonView(title: timer.buttonTitle,
                       color: .red,
                       action: timer.startTimer)

            Spacer()

            ButtonView(title: "Log Out", color: .blue, action: logOut)
        }
    
    }

    private func logOut() {
        appStorageManager.userIsRegister = false
        appStorageManager.userName = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppStorageManager())
    }
}
