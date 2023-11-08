
//  SpaceNewsPageState.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 6.11.23.
//

import Foundation

// MARK: - SpaceNewsPageState

public struct SpaceNewsPageState: Equatable {
    
    // MARK: - Properties
    
    /// Unique identifier
    public var id: Int
    
    /// The title of the article
    public var title: String
    
    /// The URL of the article's image
    public var imageURL: URL?
    
    /// A summary  of the article content
    public var summary: String
    
    /// The news site name where the article is published
    public var newsSite: String
    
    /// If article is added to favourite
    public var isArticleAddedToFavourite = false
    
    /// If article is loaded
    public var isLoaderActive = true
    
    // MARK: - Initializers
    
    public init(id: Int) {
        self.id = id
        self.title = ""
        self.imageURL = nil
        self.summary = ""
        self.newsSite = ""
    }
}

// MARK: - Text

extension SpaceNewsPageState {
    
    /// News site that published the article text
    public var publisherNewsSiteText: String {
        "Published by \(newsSite)"
    }
}


