//
//  Review.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Review: View {
     @EnvironmentObject private var userData: UserData
    
    var body: some View {
        VStack {
            Header()
                .accessibility(identifier: "review.header")
            Spacer()
            Title(title: "Review")
                .accessibility(identifier: "review.title")
            Spacer()
            Text("Programmatic & Visual Layouts")
                .accessibility(identifier: "review.layouts")
            Text("Declarative UIs")
                .accessibility(identifier: "review.declarative-uis")
            Text("Testing")
                .accessibility(identifier: "review.testing")
            Spacer()
            NavigationLink(destination: Resources().environmentObject(userData)) {
                Text("Next")
                    .accessibility(identifier: "review.next")
            }
        }
    }
}

struct Review_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Review()
        }.environmentObject(UserData())
    }
}
