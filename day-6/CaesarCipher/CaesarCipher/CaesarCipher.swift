//
//  CaesarCipher.swift
//  CaesarCipher
//
//  Created by flatironstudent on 3/17/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import Foundation

class CaesarCipher {
    
    func encode(original: String, offset: Int)->String {
        var result = [Character]()
        
        for u in original.utf8 {
            if u != 32 {
                let s = Int(u) + offset
                if s > 97 + 25 {
                    result.append(Character(UnicodeScalar(s - 26)))
                } else if s < 97 {
                    result.append(Character(UnicodeScalar(s + 26)))
                } else {
                    result.append(Character(UnicodeScalar(s)))
                }
            } else {
                result.append(Character(UnicodeScalar(u)))
            }
        }
        return String(result)
    }
}