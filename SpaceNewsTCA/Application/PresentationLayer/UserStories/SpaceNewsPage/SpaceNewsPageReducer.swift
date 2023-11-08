
//
//  SpaceNewsPageReducer.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 6.11.23.
//

import Foundation
import ComposableArchitecture

// MARK: - SpaceNewsPageReducer

public struct SpaceNewsPageReducer: Reducer {
    
    // MARK: - Properties
    
    /// ArticleService instance
    private let articlesService: ArticleService
    
    // MARK: - Initializers
    
    public init(
        articlesService: ArticleService
    ) {
        self.articlesService = articlesService
    }
    
    // MARK: - Reducer
    
    public var body: some Reducer<SpaceNewsPageState, SpaceNewsPageAction> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                return articlesService
                    .obtainArticle(withId: state.id)
                    .publish()
                    .map(ArticleServiceAction.articleWithIdObtained)
                    .catchToEffect(SpaceNewsPageAction.articlesService)
            case .articlesService(.success(.articleWithIdObtained(let article))):
                state.title = article.title
                state.newsSite = article.newsSite
                state.summary = article.summary
                state.imageURL = article.imageURL
                state.isLoaderActive = false
            case .addToFavourite:
                state.isArticleAddedToFavourite.toggle()
            default:
                break
            }
            return .none
            
        }
    }
}

