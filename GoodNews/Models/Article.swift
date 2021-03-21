//
//  Article.swift
//  GoodNews
//
//  Created by Awis Alkarni on 20/03/2021.
//

import Foundation

extension ArticlesList {
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=73370d7b1f714470b8b588a88bce910b")!
        return Resource(url: url)
    }()
}
struct ArticlesList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
