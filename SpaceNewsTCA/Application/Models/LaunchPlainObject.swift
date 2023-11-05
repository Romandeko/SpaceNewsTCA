//
//  LaunchPlainObject.swift
//  SpaceNewsTCA
//
//  Created by Роман Денисенко on 5.11.23.
//

import Foundation

// MARK: - Launch

public struct LaunchPlainObject: Decodable {
    
    // MARK: - Properties
    
    /// The launch ID associated with the launch
    public let launchId: String
   
    /// The provider associated with the launch
    public let provider: String
    
    // MARK: - CodingKeys
    
    enum CodingKeys: String, CodingKey {
        case launchId = "launch_id"
        case provider
    }
}
