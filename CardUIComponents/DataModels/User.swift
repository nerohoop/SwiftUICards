//
//  User.swift
//  CardUIComponents
//
//  Created by Xiao Jiang on 17/09/2022.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let avatar: String!
    let name: String!
    let userInfo: String!
}
