//
//  GithubRequest.swift
//  CocoapodsGem
//
//  Created by 松下慶大 on 2017/03/29.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

protocol GithubRequest: Request { }

extension GithubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}

extension GithubRequest where Response: Decodable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        return try decodeValue(object)
    }
}
