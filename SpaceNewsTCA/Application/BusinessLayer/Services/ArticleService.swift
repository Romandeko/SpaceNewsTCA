//
//  ArticleService.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import ServiceCore

// MARK: - ArticlesService

public protocol ArticleService {
    
    /// Obtain all articles
    /// - Parameters:
    ///   - limit: number of articles
    /// - Returns: all articles
    func obtainArticles(limit: Int) -> ServiceCall<[ArticlePlainObject]>
    
    /// Obtain article by Id
    /// - Parameter id: id of article
    /// - Returns: article by id
    func obtainArticle(withId id: Int) -> ServiceCall<ArticlePlainObject>
}
