//
//  Info.swift
//  RCG-RCCL
//
//  Created by Dov Rosenberg on 9/4/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
/*
 
 {
 "title": "Symphony of the Seas Deck Plans",
 "info_code": "INFO-1",
 "expires": "09/30/2017",
 "description":"The brand new Oasis class ship, Symphony of the Seas, has 18 decks and a zillion rooms with balconies",
 "group":"all",
 },
 
 */

class Info: Codable{
    
    let title: String
    let info_code: String
    let expires: Date
    let description: String
    let group: String
    
    
    init(title: String, info_code: String, expires: Date, description: String, group: String) {
        self.title = title
        self.info_code = info_code
        self.expires = expires
        self.description = description
        self.group = group
    }
}

