//
//  ProfileViewModel.swift
//  ChatApp
//
//  Created by Hoang Nhan Nguyen Dinh on 2023-03-31.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
