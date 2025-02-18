//
//  DataItemModel.swift
//  Greetings
//
//  Created by Matteo Sicilia on 09/02/25.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}
