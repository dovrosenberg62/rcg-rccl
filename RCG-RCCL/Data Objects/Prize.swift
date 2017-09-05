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
}
