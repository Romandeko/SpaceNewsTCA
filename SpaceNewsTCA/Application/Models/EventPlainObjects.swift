//
//  EventPlainObjects.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation

// MARK: - Event

public struct EventPlainObject: Decodable {
    
    // MARK: - Properties
    
    /// The event ID associated with the event
    public let eventId: Int
   
    /// The provider associated with the event
    public let provider: String
    
    // MARK: - CodingKeys
    
    enum CodingKeys: String, CodingKey {
        case eventId = "event_id"
        case provider
    }
}
