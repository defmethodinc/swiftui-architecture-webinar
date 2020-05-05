//
//  WhatToExpect.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct WhatToExpect: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        VStack {
            Header()
                .accessibility(identifier: "what-to-expect.header")
            Spacer()
            Title(title: "What to Expect")
                .accessibility(identifier: "what-to-expect.title")
            Spacer()
            Text("Programmatic & Visual Layouts")
                .accessibility(identifier: "what-to-expect.programmatic-visual-layouts")
            Text("Declarative UIs")
                .accessibility(identifier: "what-to-expect.declarative-uis")
            Text("Testing")
            Spacer()
            
            NavigationLink(destination: Layouts()
                .environmentObject(userData)) {
                Text("Next")
                    .accessibility(identifier: "what-to-expect.next")
            }
        }
    }
}

struct WhatToExpect_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WhatToExpect()
        }.environmentObject(UserData())
    }
}
