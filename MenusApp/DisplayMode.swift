//
// -----------------------------------------
// Original project: MenusApp
// Original package: MenusApp
// Created on: 13/08/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import SwiftUI

enum DisplayMode: String, Identifiable, CaseIterable, Equatable {
    case light
    case dark
    case auto
    
    var id: String {
        return self.description
    }
    
    var description: String {
        switch self {
        case .light:
            return "Light"
        case .dark:
            return "Dark"
        case .auto:
            return "Auto"
        }
    }
}
