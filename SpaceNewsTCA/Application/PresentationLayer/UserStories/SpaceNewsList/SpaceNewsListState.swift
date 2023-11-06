//
//  SpaceNewsListState.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import ComposableArchitecture

// MARK: - SpaceNewsListState

public struct SpaceNewsListState: Equatable {
    
    // MARK: - Children
    
    /// Array of identified items
    public var items = IdentifiedArrayOf<SpaceNewsListItemState>()
}
