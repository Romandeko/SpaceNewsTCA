//
//  SpaceNewsListItemReducer.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation
import ComposableArchitecture

public struct SpaceNewsListItemReducer: Reducer {
    
    public var body: some Reducer<SpaceNewsListItemState, SpaceNewsListItemAction> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                print("Chto dolzno byt zdes....Pochemy u menya netu actions?????")
            }
            return .none
        }
    }
}
