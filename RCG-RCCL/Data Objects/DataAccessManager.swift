//
//  DataAccessController.swift
//  RCG-RCCL
//
//  Created by Dov Rosenberg on 9/4/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
import ARKit

class DataAccessManager {
    
    /// The queue with updates to the virtual objects are made on.
    var updateQueue: DispatchQueue
    
    init(updateQueue: DispatchQueue) {
        self.updateQueue = updateQueue
    }
    
    // this holds the list of things that the user has collected on their journey
    var collectedPrizes = [PrizeDefinition]()
    
    static let availablePrizes: [PrizeDefinition] = {
        guard let jsonURL = Bundle.main.url(forResource: "prizes", withExtension: "json") else {
            fatalError("Missing 'prizes.json' in bundle.")
        }
        
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            return try JSONDecoder().decode([PrizeDefinition].self, from: jsonData)
        } catch {
            fatalError("Unable to decode Prize Objects JSON: \(error)")
        }
        
    }()
    
}

