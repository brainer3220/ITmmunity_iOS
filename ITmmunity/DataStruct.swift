//
//  data.swift
//  ITmmunity
//
//  Created by 진상현 on 2021/03/15.
//

import Foundation

public var UrlList: Array<String> = [
    "http://underkg.co.kr",
    "https://meeco.kr",
    "https://quasarzone.com",
    "https://coolenjoy.net",
]

public struct NewsContent: Hashable, Codable {
    var title: String
    var image: String?
    var hit: Int
    var numComment: Int
    var url: String
}

public var dummies: Array<NewsContent> =
    [
        Content(
        title: "삼성전자, 갤럭시 엑스커버 프로 OneUI 3.0 업데이트 배포",
        image: nil,
        hit: 784,
        numComment: 0,
        url: "www.underkg.co.kr"
    ),
        Content(
        title: "삼성, 'Neo QLED', TV 업계 최초 독일 VDE '아이케어' 인증 획득)",
        image: nil,
        hit: 404,
        numComment: 10,
        url: "www.underkg.co.kr"
    )
]
