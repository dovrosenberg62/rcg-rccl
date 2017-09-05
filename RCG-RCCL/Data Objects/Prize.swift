//
//  Prize.swift
//  RCG-RCCL
//
//  Created by Dov Rosenberg on 9/4/17.
//  Copyright © 2017 Apple. All rights reserved.
//

/*
 "prize": [
 {
 "name": "30 minutes on Flowrider",
 "coupon_code": "30MINFLOW",
 "expires": "09/30/2017",
 "redemption_type":"Sequential",
 "prize_type":"Gift",
 "captures":"30",
 "group":"teen",
 },
 ]
 */

import Foundation

/*struct PrizesList : Codable {
    let prizes: [Prize]
}
*/
class PrizeTmp: Codable{
    
    let name: String
    let coupon_code: String
    let expires: String
    let prize_type: String
    let captures: String
    let group: String
    let redemption_type: String
    
    
    init(name: String, coupon_code: String, expires: String, prize_type: String, captures: String, group: String, redemption_type: String) {
        self.name = name
        self.coupon_code = coupon_code
        self.expires = expires
        self.prize_type = prize_type
        self.captures = captures
        self.group = group
        self.redemption_type = redemption_type
    }
}
