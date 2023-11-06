//
//  ArticleService.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import ServiceCore

// MARK: - ArticleServiceAction

public enum ArticleServiceAction: Equatable {
    
    // MARK: - Cases
    
    case articlesObtained([ArticlePlainObject])
}

// MARK: - ArticleServiceError

public typealias ArticleServiceError = NSError

// MARK: - ArticlesService

public protocol ArticleService {
    
    /// Obtain all articles
    /// - Parameters:
    ///   - limit: number of articles
    /// - Returns: all articles
    func obtainArticles(limit: Int) -> ServiceCall<[ArticlePlainObject]>
}
