//
//  SpaceNewsListAction.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation

// MARK: - SpaceNewsListAction

public enum SpaceNewsListAction: Equatable {
    
    // MARK: - Cases
    
    /// On appear action
    case onAppear
    
    /// Action for `ArticlesService` business logic
    case articlesService(Result<ArticleServiceAction, ArticleServiceError>)
    
    // MARK: - Children
    
    /// Item action
    case item(id: Int, action: SpaceNewsListItemAction)
}
