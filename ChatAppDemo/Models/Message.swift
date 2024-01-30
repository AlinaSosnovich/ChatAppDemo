//
//  Message.swift
//  ChatAppDemo
//
//  Created by Sergei  Sosnovich on 3.10.23.
//

import Foundation

struct Message: Identifiable, Codable{
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
