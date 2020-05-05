//
//  Title.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Header: View {
    var body: some View {
        Text("Rethinking iOS Architecture and Testing with SwiftUI")
        .font(.largeTitle)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
