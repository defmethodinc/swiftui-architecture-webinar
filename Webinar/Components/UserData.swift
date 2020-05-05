//
//  UserData.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/30/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var resources = resourceData
    @Published var notes: [Resource: String] = [:]
}
