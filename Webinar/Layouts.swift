//
//  VisualLayouts.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Layouts: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        VStack {
            Header()
                .accessibility(identifier: "layouts.header")
            Spacer()
            Title(title: "Programmatic & Visual Layouts")
                .accessibility(identifier: "layouts.title")
            Spacer()
            Text("Programmatic Views")
                .accessibility(identifier: "layouts.programmatic")
            Text("Visual")
                .accessibility(identifier: "layouts.visual")
            Spacer()
            
            NavigationLink(destination: DeclarativeUI()
                .environmentObject(userData)) {
                Text("Next")
                    .accessibility(identifier: "layouts.next")
            }
        }
    }
}

struct VisualLayouts_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Layouts()
        }.environmentObject(UserData())
    }
}
