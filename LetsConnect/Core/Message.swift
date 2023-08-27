//
//  Message.swift
//  LetsConnect
//
//  Created by Nil Nguyen on 27/8/2023.
//

import Foundation

struct Message: Identifiable {
    let id = UUID()
    let body: String
    let authorName: String
    let timestamp: Int
}
