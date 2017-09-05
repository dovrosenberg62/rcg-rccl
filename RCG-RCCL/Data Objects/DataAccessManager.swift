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
    //weak var delegate: DataAccessManagerDelegate?
    
    var availablePrizes = [Prize]()
    var availableInfo = [Info]()
    var availableClues = [Clue]()
    

    /// The queue with updates to the virtual objects are made on.
    var updateQueue: DispatchQueue
    
    init(updateQueue: DispatchQueue) {
        self.updateQueue = updateQueue
    }
    
    static let availablePrizes: [Prize] = {
        guard let jsonURL = Bundle.main.url(forResource: "prizes", withExtension: "json") else {
            fatalError("Missing 'prizes.json' in bundle.")
        }
        
        do {
            let jsonData = try Data(contentsOf: jsonURL)
            let prizes = try JSONDecoder().decode([Prize].self, from: jsonData)
            //print ("\(prizes[].name) \(prizes[].couponCode) ")
            return prizes
        } catch {
            fatalError("Unable to decode Prize Objects JSON: \(error)")
        }
    }()
    
}

