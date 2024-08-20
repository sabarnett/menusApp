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

struct ContentView: View {
    
    @StateObject var vm = ContentViewViewModel()
    @State var names = UserData()
    @State private var selection: User? = nil
    @State private var orderBy: OrderBy = .firstName
    
    var nameList: [User] { names.userList(orderedBy: orderBy) }
    
var body: some View {
    VStack {
        List(nameList, id: \.self, selection: $selection) { name in
            Text(name.description(orderedBy: orderBy))
        }
        .contextMenu {
            Button(action: { duplicateItem() },
                   label: { Text("Duplicate Me")})
                .disabled(selection == nil)
            
            Picker(selection: $orderBy, content: {
                ForEach(OrderBy.allCases) { order in
                    Text(order.description).tag(order)
                }
            }, label: { Text("Order By") })
            
            Divider()
            Button(action: { deleteItem() },
                   label: { Text("Delete Me")})
                .disabled(selection == nil)
        }
    }
    .padding()
    .focusedSceneObject(vm)
}

    func duplicateItem() {
        guard let name = selection else { return }
        print("Duplicate \(name.description(orderedBy: orderBy))")
    }

    func deleteItem() {
        guard let name = selection else { return }
        print("Delete \(name.description(orderedBy: orderBy))")
    }
}

#Preview {
    ContentView()
}
