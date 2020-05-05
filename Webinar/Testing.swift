//
//  Testing.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Testing: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        VStack {
            Header()
                .accessibility(identifier: "testing.header")
            Spacer()
            Title(title: "Testing")
                .accessibility(identifier: "testing.title")
            Spacer()
            Text("UI Tests")
                .accessibility(identifier: "testing.ui-tests")
            Text("Unit Tests")
                .accessibility(identifier: "testing.unit-tests")
            Spacer()
            
            NavigationLink(destination: Review()
                .environmentObject(userData)) {
                Text("Next")
                    .accessibility(identifier: "testing.next")
            }
        }
    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Testing()
        }.environmentObject(UserData())
    }
}
