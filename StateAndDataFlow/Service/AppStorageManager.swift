//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Илья Дубенский on 15.12.2022.
//

import SwiftUI

final class AppStorageManager: ObservableObject {
    @AppStorage("userIsRegister") var userIsRegister = false
    @AppStorage("userName") var userName = ""
}
