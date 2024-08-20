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

struct VMMenus: Commands {
    
    @FocusedObject private var vm: ContentViewViewModel?
    
    var body: some Commands {
        CommandMenu("View Model") {
            Button("Action 1") {
                guard let vm else { return }
                vm.someAction1Action()
            }
            .disabled(vm?.action1Disabled ?? true)
            
            Button("Action 2") {
                print("Action 2")
            }
            .disabled(vm?.action2Disabled ?? true)
            
            Button("Action 3") {
                print("Action 3")
            }
            .disabled(vm?.action3Disabled ?? true)
        }
    }
}
