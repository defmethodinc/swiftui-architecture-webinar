//
//  ResourceDetail.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/30/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct ResourceDetail: View {
    var resource: Resource
    var notes: String
    var updateNotes: (_ notes: String) -> Void
    
    @State private var editingNotes: String = ""
    
    var body: some View {
        KeyboardResponsiveView {
            VStack {
                Header()
                    .accessibility(identifier: "resource-detail.header")
                Spacer()
                Title(title: resource.title)
                    .padding(.bottom, 10)
                    .accessibility(identifier: "resource-detail.title")
                Text(resource.url)
                    .foregroundColor(Color.blue)
                    .padding(.all)
                    .onTapGesture {
                        let url = URL.init(string: self.resource.url)!
                        UIApplication.shared.open(url)
                    }
                    .accessibility(identifier: "resource-detail.url")
                Text("from \(resource.source)")
                    .accessibility(identifier: "resource-detail.source")
                Spacer()
                Spacer()
                TextField("Notes", text: $editingNotes)
                    .padding()
                    .accessibility(identifier: "resource-detail.notes")
            }
        }.onAppear {
            self.editingNotes = self.notes
        }
        .onDisappear {
            self.updateNotes(self.editingNotes)
        }
    }
}

func previewUpdateNotes(notes: String) -> Void {
    print("updateNotes example")
}

struct ResourceDetail_Previews: PreviewProvider {
    static var previews: some View {
        ResourceDetail(
            resource: resourceData[0],
            notes: "Test Note",
            updateNotes: previewUpdateNotes
        )
    }
}
