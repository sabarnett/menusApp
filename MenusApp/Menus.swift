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

struct Menus: Commands {
    
    @AppStorage("setting1") var toggle1: Bool = true
    @AppStorage("displayMode") var displayMode: DisplayMode = .light
    
    var body: some Commands {

        //        If you uncomment this, the template menu will not appear.
        //        CommandGroup(replacing: .newItem) {
        //            EmptyView()
        //        }

        CommandGroup(after: .newItem) {
            Button(action: {
                print("New Template Selected")
            }, label: {
                Text("New Template")
            })
            .keyboardShortcut(KeyEquivalent("t"), modifiers: .command)
            .help("Create a new template file")
        }
        
        CommandGroup(replacing: CommandGroupPlacement.help) {
            Button(action: {
                print("This is the help menu item")
            }, label: {
                Text("Application Help")
            })
        }
        
        TextFormattingCommands()
        
        CommandMenu("Display") {
            Button("Item 1") {
                print("Item 1 selected")
            }
            Button("Item 2") {
                print("Item 2 selected")
            }
            Divider()
            Menu("Item 3") {
                Button("Sub-item 1") {
                    print("Sub-item 1 selected")
                }
                Button("Sub-item 2") {
                    print("Sub-item 2 selected")
                }
                Button("Sub-item 3") {
                    print("Sub-item 3 selected")
                }
            }
            
            Divider()
            Toggle(isOn: $toggle1) {
                Text("Setting 1")
            }
            
            Divider()
            Picker(selection: $displayMode, content: {
                ForEach(DisplayMode.allCases) { mode in
                    Text(mode.description).tag(mode)
                }
            }, label: {
                Text("Display mode")
            })
        }
    }
}
