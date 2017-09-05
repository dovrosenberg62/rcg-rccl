//
//  Clue.swift
//  RCG-RCCL
//
//  Created by Dov Rosenberg on 9/4/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
/*
 
 {
 "game": "Capture the flag",
 "clue_code": "CAPTUREFLAG-3",
 "expires": "09/30/2017",
 "description":"Look for a picture of clowns",
 "group":"all",
 },
 
*/
class Clue: Codable{
    
    let game: String
    let clue_code: String
    let expires: Date
    let description: String
    let group: String
    
    
    init(game: String, clue_code: String, expires: Date, description: String, group: String) {
        self.game = game
        self.clue_code = clue_code
        self.expires = expires
        self.description = description
        self.group = group
    }
}
