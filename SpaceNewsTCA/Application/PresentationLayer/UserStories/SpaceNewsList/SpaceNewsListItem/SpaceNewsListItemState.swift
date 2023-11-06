//
//  SpaceNewsListItemState.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation

// MARK: - SpaceNewsListItemState

public struct SpaceNewsListItemState: Identifiable, Equatable {
    
    // MARK: - Properties

    /// Unique identifier
    public let id: Int
    
    /// The title of the article.
    public let title: String

    /// The URL of the article's image.
    public let imageURL: String
    
    /// The news site name where the article is published.
    public let newsSite: String
    
    // MARK: - Initializers
    
    public init(
        articlePlain: ArticlePlainObject
    ) {
        self.id = articlePlain.id
        self.title = articlePlain.title
        self.imageURL = articlePlain.imageURL
        self.newsSite = articlePlain.newsSite
    }
}
