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
    
    // MARK: - Reducer
    
    public var body: some Reducer<SpaceNewsListState, SpaceNewsListAction> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .send(.updateItems)
            case .updateItems:
                let service = ArticleServiceImplementation(transport: HTTPTransport())
            default:
                break
            }
            return .none
        }
        .forEach(\.items, action: /SpaceNewsListAction.item(id:action:)) {
            SpaceNewsListItemReducer()
        }
    }
}
