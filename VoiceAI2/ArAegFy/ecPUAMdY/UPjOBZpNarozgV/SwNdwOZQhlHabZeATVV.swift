//
//  LanguageSelectModel.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI

struct VCUQnAVROI: Identifiable, Equatable {
    
    var id = UUID().uuidString
    
    var language_name: String
    var language_slug: String
}

struct BzqFEMHBzs: Codable {
    
    let data: NodvNlVmde
}

struct NodvNlVmde: Codable {
    
    let translations: [FNtCuVPUIM]
}

struct FNtCuVPUIM: Codable {
    
    let translatedText: String
}

enum LanguageCategories: CaseIterable {
    
    case all, favorites
    
    var text: String {
        
        switch self {
            
        case .all:
            return "All"
            
        case .favorites:
            return "Favorites"
        }
    }
}
