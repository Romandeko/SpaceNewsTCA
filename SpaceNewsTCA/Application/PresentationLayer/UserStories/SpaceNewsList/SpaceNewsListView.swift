//
//  SpaceNewsListView.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import ComposableArchitecture
import SwiftUI

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
                        store.scope(state: \.items,
                                    action: SpaceNewsListAction.item(id:action:)), content: { store in
                                        Text("SAD")
                                    }
                    )
                    .navigationTitle("News")
                    .navigationBarTitleDisplayMode(.inline)
                }
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
                reducer: SpaceNewsListReducer()
            )
        )
    }
}
