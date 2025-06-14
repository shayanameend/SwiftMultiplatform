//
//  DataItemModel.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/14/25.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id: UUID = .init()
    let text: String
    let color: Color
}
