//
//  Title.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/28/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

struct Title: View {
    var title: String
    
    var body: some View {
        Text(self.title)
            .font(.title)
            .fontWeight(.light)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: "Example Title")
    }
}
