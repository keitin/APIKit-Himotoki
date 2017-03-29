//
//  ViewController.swift
//  CocoapodsGem
//
//  Created by 松下慶大 on 2017/03/29.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit
import APIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = RateLimitRequest()
        Session.send(request) { result in
            switch result {
            case .success(let rateLimit):
                print("limit: \(rateLimit.limit)")
                print("remaining: \(rateLimit.remaining)")
            case .failure(let error):
                print("error: \(error)")
            }
        }
        
        let searchRepoRequest = SearchRepositoryRequest(q: "Swift")
        Session.send(searchRepoRequest) { result in
            switch result {
            case .success(let repositortCollection):
                for repository in repositortCollection.repositories {
                    print("name: " + repository.name)
                    print("url: " + repository.url)
                }
            case .failure(let error):
                print("error: \(error)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

