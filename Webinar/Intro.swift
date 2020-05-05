//
//  Intro.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Intro: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        VStack {
            Header().accessibility(identifier: "intro.header")
            Spacer()
            Title(title: "Welcome")
                .accessibility(identifier: "intro.title")
            Spacer()
            Text("Def Method")
                .accessibility(identifier: "intro.company")
            Text("Paul Ort")
                .accessibility(identifier: "intro.presenter")
            Text("port@defmethod.com")
            Spacer()
            
            NavigationLink(destination: WhatToExpect()
                .environmentObject(userData)
            ) {
                Text("Next")
                    .accessibility(identifier: "intro.next")
            }
        }
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Intro()
        }.environmentObject(UserData())
    }
}
