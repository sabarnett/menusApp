//
// -----------------------------------------
// Original project: MenusApp
// Original package: MenusApp
// Created on: 20/08/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import SwiftUI

class ContentViewViewModel: ObservableObject {
    
    @Published var vmId: UUID = UUID()
    
    @Published var action1Disabled: Bool = false
    @Published var action2Disabled: Bool = true
    @Published var action3Disabled: Bool = false
    
    public func someAction1Action() {
        print("Some action that results in Action 2 menu changing state")
        action2Disabled = false
    }
}
