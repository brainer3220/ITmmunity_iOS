//
//  Landmark.swift .swift
//  ITmmunity
//
//  Created by 진상현 on 2021/03/14.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
