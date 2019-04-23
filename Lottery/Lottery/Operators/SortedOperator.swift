//
//  SortedNumbers.swift
//  Lottery
//
//  Created by Gabriel Henrique Santos Pereira on 23/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import Foundation

infix operator >-<

func >-< (total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universe)) + 1)
        
        if !result.contains(randomNumber) {
            result.append(randomNumber)
        }
    }
    
    return result.sorted()
}
