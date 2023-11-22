//
//  GenerateRandomWord.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI

func DvdAltisJl(length: Int) -> String {
    
    let letters = "abcdefghijklmnopqrstuvwxyz"
    var word = ""

    for _ in 0..<length {
        let randomIndex = Int(arc4random_uniform(UInt32(letters.count)))
        let character = letters[letters.index(letters.startIndex, offsetBy: randomIndex)]
        word.append(character)
    }

    return word
}
