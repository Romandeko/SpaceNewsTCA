//
//  SpaceNewsListReducer.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import ComposableArchitecture
import HTTPTransport

// MARK: - SpaceNewsListReducer

public struct SpaceNewsListReducer: Reducer {
    
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
    
    public var body: some Reducer<SpaceNewsListState, SpaceNewsListAction> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                return articlesService
                    .obtainArticles(limit: 10)
                    .publish()
                    .map(ArticleServiceAction.articlesObtained)
                    .catchToEffect(SpaceNewsListAction.articlesService)
            case .articlesService(.success(.articlesObtained(let articles))):
                state.items = IdentifiedArray(uniqueElements: articles.map(SpaceNewsListItemState.init))
            case .item(let id, action: .itemTapped):
                state.newsPage = SpaceNewsPageState(id: id)
                return .send(.setNewsPageActive(true))
            case .setNewsPageActive(let value):
                state.isNewsPageActive = value
            default:
                break
            }
            return .none
        }
        .forEach(\.items, action: /SpaceNewsListAction.item) {
            SpaceNewsListItemReducer()
        }
        .ifLet(\.newsPage, action: /SpaceNewsListAction.newsPage) {
            SpaceNewsPageReducer(articlesService: articlesService)
        }
    }
}
