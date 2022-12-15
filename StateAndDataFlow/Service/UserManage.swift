//
//  UserManage.swift
//  StateAndDataFlow
//
//  Created by Илья Дубенский on 15.12.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
