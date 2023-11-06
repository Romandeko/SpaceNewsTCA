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
    
    /// Update the list of items
    case updateItems
    
    // MARK: - Children
    
    /// Item action
    case item(id: UUID, action: SpaceNewsListItemAction)
}
