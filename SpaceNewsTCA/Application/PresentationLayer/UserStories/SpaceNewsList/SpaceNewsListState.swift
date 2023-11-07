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
    
    /// An instance of `spaceNewsPage`' submodule
    public var newsPage: SpaceNewsPageState?
    
    // MARK: - Navigation
    
    /// If newsPage module is active
    public var isNewsPageActive = false
}
