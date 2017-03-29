//
//  SearchRepositoryRequest.swift
//  CocoapodsGem
//
//  Created by 松下慶大 on 2017/03/29.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct SearchRepositoryRequest: GithubRequest {
    
    typealias Response = RepositoryCollection
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/search/repositories"
    }
    
    var queryParameters: [String : Any]? {
        return ["q": self.q]
    }
    
    let q: String
    
    init(q: String) {
        self.q = q
    }
}

struct RepositoryCollection: Decodable {
    
    var repositories: [Repository] = []
    
    static func decode(_ e: Extractor) throws -> RepositoryCollection {
        return try RepositoryCollection(repositories: e <|| ["items"])
    }
}

struct Repository: Decodable {
    
    let name: String
    let url: String
    
    static func decode(_ e: Extractor) throws -> Repository {
        return try Repository(
            name: e <| ["name"],
            url: e <| ["html_url"]
        )
    }
}
