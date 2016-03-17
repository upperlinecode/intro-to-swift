//
//  PigLatinizer.swift
//  PigLatinizer
//
//  Created by flatironstudent on 3/17/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import Foundation


class PigLatinizer {
    
    func convert(original: String)->String {
        let vowels = ["a", "e", "i", "o", "u"]
        var pigLatinizedString = original.lowercaseString
        var firstLetter = String(pigLatinizedString.characters[pigLatinizedString.characters.startIndex])
        if vowels.contains(firstLetter) {
           pigLatinizedString += "yay"
        } else {
            while !vowels.contains(firstLetter) {
                pigLatinizedString = pigLatinizedString.substringWithRange(Range<String.Index>(start: pigLatinizedString.startIndex.advancedBy(1), end: pigLatinizedString.endIndex)) + firstLetter
                firstLetter = String(pigLatinizedString.characters[pigLatinizedString.characters.startIndex])
            }
            pigLatinizedString += "ay"
        }
        return pigLatinizedString.capitalizedString
    }
    
}