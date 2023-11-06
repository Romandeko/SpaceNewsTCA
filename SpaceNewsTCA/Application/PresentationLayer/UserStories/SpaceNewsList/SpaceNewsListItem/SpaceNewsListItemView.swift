//
//  SpaceNewsListItemView.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import Kingfisher

// MARK: - SpaceNewsListItemView

public struct SpaceNewsListItemView: View {
    
    // MARK: - Properties
    
    /// The store powering the `SpaceNewsListItem` Reducer
    public let store: StoreOf<SpaceNewsListItemReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            HStack(spacing: 10) {
                KFImage(viewStore.imageURL)
                    .resizable()
                    .frame(width: 120, height: 90)
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 5) {
                    Text(viewStore.title)
                        .font(.system(size: 22,weight: .semibold))
                    Text(viewStore.publishedAt)
                        .font(.system(size: 16))
                }
                Spacer()
            }
            .padding(.horizontal, 10)
        }
    }
}

// MARK: - Preview

struct SpaceNewsListItemView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceNewsListItemView(
            store: Store(
                initialState: SpaceNewsListItemState(),
                reducer: SpaceNewsListItemReducer()
            )
        )
    }
}
