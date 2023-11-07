//
//  SpaceNewsListView.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import ComposableArchitecture
import SwiftUI
import HTTPTransport

// MARK: - SpaceNewsListView

public struct SpaceNewsListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `SpaceNewsList` Reducer
    public let store: StoreOf<SpaceNewsListReducer>
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            NavigationView {
                List {
                    ForEachStore(
                        store.scope(
                            state: \.items,
                            action: SpaceNewsListAction.item
                        ),
                        content: SpaceNewsListItemView.init
                    )
                    .navigationTitle("News")
                    .navigationBarTitleDisplayMode(.inline)
                }
                .background(
                    NavigationLink(
                        isActive: viewStore.binding(
                            get: \.isNewsPageActive,
                            send: SpaceNewsListAction.setNewsPageActive
                        ),
                        destination: {
                            IfLetStore(
                                store.scope(
                                    state: \.newsPage,
                                    action: SpaceNewsListAction.newsPage
                                ), then: { store in
                                    SpaceNewsPageView(store: store)
                                }
                            )
                        },
                        label: { EmptyView() }
                    )
                )
            }
            .onAppear {
                viewStore.send(.onAppear)
            }
        }
    }
}

// MARK: - Preview

struct SpaceNewsListView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceNewsListView(
            store: Store(
                initialState: SpaceNewsListState(),
                reducer: SpaceNewsListReducer(
                    articlesService: ArticleServiceImplementation(
                        transport: HTTPTransport.init()
                    )
                )
            )
        )
    }
}
