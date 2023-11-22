//
//  DetectLanguage.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI
import NaturalLanguage

func MiUTFkjUyt(for text: String) -> String? {
    
    let recognizer = NLLanguageRecognizer()
    
    recognizer.processString(text)
    
    guard var languageCode = recognizer.dominantLanguage?.rawValue else {
        
        return nil
    }

    if languageCode == "en" {
        
        languageCode += "-UK"
        
    } else if languageCode == "fr" {
        
        languageCode += "-FR"
    }
    
    return languageCode
}
