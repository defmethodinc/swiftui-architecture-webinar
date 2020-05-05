//
//  Resource.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/30/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

struct Resource: Hashable, Codable, Identifiable {
    var id: String
    var source: String
    var title: String
    var url: String
}
