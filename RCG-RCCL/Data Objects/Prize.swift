//
//  Prize.swift
//  RCG-RCCL
//
//  Created by Dov Rosenberg on 9/4/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

struct PrizesList : Codable {
    let prizes: [Prize]
}

class Prize: Codable{
    
    let name: String
    let couponCode: String
    let expires: Date
    let prizeType: String
    let captures: Int
    let group: String
    let redemptionType: String
    
    
    init(name: String, couponCode: String, expires: Date, prizeType: String, captures: Int, group: String, redemptionType: String) {
        self.name = name
        self.couponCode = couponCode
        self.expires = expires
        self.prizeType = prizeType
        self.captures = captures
        self.group = group
        self.redemptionType = redemptionType
    }
}
