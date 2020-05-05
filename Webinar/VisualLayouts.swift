//
//  VisualLayouts.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Layouts: View {
    var body: some View {
        VStack {
            Text("Rethinking iOS Architecture and Testing with SwiftUI")
                .font(.largeTitle)
            Spacer()
            Text("Programmatic & Visual Layouts")
                .font(.title)
            Spacer()
            Text("Programmatic")
            Text("Visual")
            Spacer()
        }
    }
}

struct VisualLayouts_Previews: PreviewProvider {
    static var previews: some View {
        Layouts()
    }
}
