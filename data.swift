//
//  data.swift
//  ITmmunity
//
//  Created by 진상현 on 2021/03/15.
//

import Foundation

//struct UrlList: String {
//    "http://underkg.co.kr",
//    "https://meeco.kr",
//    "https://quasarzone.com",
//    "https://coolenjoy.net"
//}


//struct Content: Hashable, Codable {
//    val title: String,
//    val image: Image,
//    val hit: Int,
//    val numComment: Int,
//    val url: String
//}

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
