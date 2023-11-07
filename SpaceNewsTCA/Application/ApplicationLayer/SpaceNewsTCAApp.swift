//
//  SpaceNewsTCAApp.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import SwiftUI
import ComposableArchitecture
import HTTPTransport

@main
struct SpaceNewsTCAApp: App {
    var body: some Scene {
        WindowGroup {
            SpaceNewsListView(
                store: Store(
                    initialState: SpaceNewsListState(),
                    reducer: SpaceNewsListReducer(
                        articlesService: ArticleServiceImplementation(
                            transport: HTTPTransport()
                        )
                    )
                )
            )
        }
    }
}
