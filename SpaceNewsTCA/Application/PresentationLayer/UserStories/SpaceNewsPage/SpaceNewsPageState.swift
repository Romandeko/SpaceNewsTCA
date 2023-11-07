//
//  SpaceNewsPageState.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 6.11.23.
//

import Foundation
import SwiftUI

// MARK: - SpaceNewsPageState

public struct SpaceNewsPageState: Equatable {
    
    // MARK: - Properties
    
    /// Unique identifier
    public var id: Int
    
    /// The title of the article
    public var title: String

    /// The string for URL of the article's image
    public var stringForImageURL: String

    /// A summary  of the article content
    public var summary: String
    
    /// The news site name where the article is published
    public var newsSite: String
    
    /// If article is added to favourite
    public var isArticleAddedToFavourite = false
    
    /// The URL of the article's image
    public var imageURL: URL? {
        URL(string: stringForImageURL)
    }
    
    /// Color of add to favourite button image
    public var addToFavouriteImageColor: Color {
        isArticleAddedToFavourite ? .red : .black
    }
    
    // MARK: - Initializers
    
    public init(
        id: Int
    ) {
        self.id = id
        self.title = ""
        self.stringForImageURL = ""
        self.summary = ""
        self.newsSite = ""
    }
}

// MARK: - Text

extension SpaceNewsPageState {
    
    /// Published by text
    public var publishedBy: String {
        "Published by \(newsSite)"
    }
}
