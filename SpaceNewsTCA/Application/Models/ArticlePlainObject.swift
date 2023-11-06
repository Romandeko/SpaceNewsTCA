//
//  ArticlePlainObject.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation

// MARK: - ArticlePlainObject

public struct ArticlePlainObject: Decodable, Equatable {
    
    // MARK: - Properties
    
    /// The unique identifier of the article.
    public let id: Int
    
    /// The title of the article.
    public let title: String
    
    /// The URL of the article.
    public let url: String
  
    /// The URL of the article's image.
    public let imageURL: String
    
    /// The news site name where the article is published.
    public let newsSite: String
    
    /// A summary  of the article content.
    public let summary: String
    
    /// The date and time when the article was published.
    public let publishedAt: String
    
    /// The date and time when the article was last updated.
    public let updatedAt: String
    
    /// Indicates if the article is featured or not.
    public let featured: Bool
    
    // MARK: - CodingKeys
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case url
        case imageURL = "image_url"
        case newsSite = "news_site"
        case summary
        case publishedAt = "published_at"
        case updatedAt = "updated_at"
        case featured
    }
}
