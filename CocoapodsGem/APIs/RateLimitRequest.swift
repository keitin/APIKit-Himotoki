//
//  RateLimitRequest.swift
//  CocoapodsGem
//
//  Created by 松下慶大 on 2017/03/29.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct RateLimitRequest: GithubRequest {
    
    typealias Response = RateLimit
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/rate_limit"
    }
}

struct RateLimit: Decodable {
    
    let limit: Int
    let remaining: Int
    
    static func decode(_ e: Extractor) throws -> RateLimit {
    
        return try RateLimit(
            limit: e <| ["rate", "limit"],
            remaining: e <| ["rate", "remaining"]
        )
    }
}
