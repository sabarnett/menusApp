//
// -----------------------------------------
// Original project: MenusApp
// Original package: MenusApp
// Created on: 17/08/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import SwiftUI

struct User: Identifiable, Hashable {
    public var id = UUID()
    public var firstName: String
    public var lastName: String
    
    public func description(orderedBy: OrderBy) -> String {
        switch orderedBy {
        case .firstName:
            return "\(firstName) \(lastName)"
        case .lastName:
            return "\(lastName), \(firstName)"
        }
    }
}

enum OrderBy: Identifiable, CaseIterable, CustomStringConvertible {
    case firstName
    case lastName
    
    var id: String {
        self.description
    }
    
    var description: String {
        switch self {
        case .firstName:
            return "First Name"
        case .lastName:
            return "Last Name"
        }
    }
}

@Observable
class UserData {
    
    public var users: [User]
    
    init() {
        users = [
            User(firstName: "Conni", lastName: "Sangwine"),
            User(firstName: "Meara", lastName: "Kohlerman"),
            User(firstName: "Ragnar", lastName: "Defraine"),
            User(firstName: "Taylor", lastName: "Bool"),
            User(firstName: "Robinet", lastName: "Nicklin"),
            User(firstName: "Jacquelin", lastName: "Kacheler"),
            User(firstName: "Grace", lastName: "Gilmore"),
            User(firstName: "Juditha", lastName: "Stoddard"),
            User(firstName: "Ginger", lastName: "Ludron"),
            User(firstName: "Minne", lastName: "Snazle"),
            User(firstName: "Roderich", lastName: "Pittem")
        ]
    }
    
    func userList(orderedBy: OrderBy) -> [User] {
        switch orderedBy {
        case .firstName:
            users.sorted(by: {$0.firstName < $1.firstName})
        case .lastName:
            users.sorted(by: {$0.lastName < $1.lastName})
        }
    }
}
