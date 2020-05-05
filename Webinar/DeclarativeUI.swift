//
//  DeclarativeUI.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct DeclarativeUI: View {
    @EnvironmentObject private var userData: UserData
    @State private var counter = 0
    
    func updateCounter() {
        self.counter += 1
        
        if (self.counter < 20) {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.updateCounter()
            })
        }
    }
    
    var body: some View {
        VStack {
            Header()
                .accessibility(identifier: "declarative-ui.header")
            Spacer()
            Title(title: "Declarative UIs")
                .accessibility(identifier: "declarative-ui.title")
            Spacer()
            HStack {
                Text("View State")
                    .accessibility(identifier: "declarative-ui.state")
                Text("Counter: \(counter)")
            }
            Text("Object Data")
                .accessibility(identifier: "declarative-ui.object")
            Text("Environment Data")
                .accessibility(identifier: "declarative-ui.environment")
            Spacer()
            
            NavigationLink(destination: Testing()
                .environmentObject(userData)) {
                Text("Next")
                    .accessibility(identifier: "declarative-ui.next")
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.updateCounter()
            })
        }
    }
}

struct DeclarativeUI_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DeclarativeUI()
        }.environmentObject(UserData())
    }
}
