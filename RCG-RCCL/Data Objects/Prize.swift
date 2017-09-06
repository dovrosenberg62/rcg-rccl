//
//  Prize.swift
//  RCG-RCCL
//
//  Created by Dov Rosenberg on 9/4/17.
//  Copyright © 2017 Apple. All rights reserved.
//

/*
 
 [
 {
 "name": "test name",
 "coupon_code": "30MINFLOW",
 "expires": "09/30/2017",
 "redemption_type":"Sequential",
 "prize_type":"Gift",
 "captures":"30",
 "group":"teen",
 "description":"lorem ipso facto",
 },
 ]
 */

import Foundation


struct PrizeDefinition: Codable{
    let name: String
    let coupon_code: String
    let expires: String
    let prize_type: String
    let captures: String
    let group: String
    let redemption_type: String
    let description: String
    
    init(name: String, coupon_code: String, expires: String, prize_type: String, captures: String, group: String, redemption_type: String, description: String) {
        self.captures = captures
        self.coupon_code = coupon_code
        self.expires = expires
        self.description = description
        self.group = group
        self.name = name
        self.prize_type = prize_type
        self.redemption_type = redemption_type
    }
}
