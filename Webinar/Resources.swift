//
//  Resources.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/30/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Resources: View {
    @EnvironmentObject private var userData: UserData
    
    @State private var showAppleResourcesOnly = false
    
    func makeUpdateNotes(resource: Resource) -> ((_ notes: String) -> Void) {
        func updateNotes(notes: String) -> Void {
            userData.notes[resource] = notes
        }
        return updateNotes
    }
    
    func resourceLink(resource: Resource) -> some View {
        NavigationLink(destination: ResourceDetail(
            resource: resource,
            notes: userData.notes[resource] ?? "",
            updateNotes: makeUpdateNotes(resource: resource)
        )) {
            Text(resource.title)
        }.accessibility(identifier: "resources.\(resource.id)")
    }
    
    var resourceList: some View {
        List {
            Toggle(isOn: $showAppleResourcesOnly) {
                Text("Apple Resources Only")
                    .font(.subheadline).italic()
            }.accessibility(identifier: "resources.apple-only")
            ForEach(userData.resources) { resource in
                if (!self.showAppleResourcesOnly || (resource.source == "Apple")) {
                    self.resourceLink(resource: resource)
                }
            }
        }
    }
    
    var body: some View {
        VStack {
            Header()
                .accessibility(identifier: "resources.header")
            Spacer()
            Title(title: "Resources")
                .accessibility(identifier: "resources.title")
            Spacer()
            resourceList
        }
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Resources()
        }.environmentObject(UserData())
    }
}
