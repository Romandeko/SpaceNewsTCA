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
    public let id: UUID = UUID()
    
    /// The title of the article.
    public let title: String = "What’s Happening in Space Policy?"

    /// The URL of the article's image.
    public let imageURL: URL = URL(string: "https://spacepolicyonline.com/wp-content/uploads/2023/11/redwire-panel-300x131.png")!
    
    /// The date and time when the article was published.
    public let publishedAt: String = "2023-11-05"
}
