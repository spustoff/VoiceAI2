//
//  GenerateModel.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

struct WFKoYYDiUQ: Codable, Hashable {
    
    var data: [UuuPWxlQBU]?
    var msg: String?
    var status: Int?
}

struct UuuPWxlQBU: Codable, Hashable {
    
    var category: String?
    var objectId: String?
    var speaker_id: String?
    var speaker_name: String?
    
    var voice_id: String?
}

struct rpEOPjdRYu: Decodable {
    
    let data: String
    let msg: String
    let status: Int
    
    var character: UuuPWxlQBU?
    var prompt: String?
    var uniqueID: Int?
}

struct kHnhWldqOP: Identifiable {
    
    let id = UUID()
    let url: URL
}

struct ysrtxTwFEG {
    
    var title: String = ""
    var subtitle: String = ""
}

enum TabCategories: CaseIterable {
    
    case all, politics, musicians, celebrities, iBcgDPMqqv, other
    
    var text: String {
        
        switch self {
            
        case .all:
            return "All"
            
        case .politics:
            return "Political"
            
        case .musicians:
            return "Musicians"
            
        case .celebrities:
            return "Celebrities"
            
        case .iBcgDPMqqv:
            return "Characters"
            
        case .other:
            return "Other"
        }
    }
}
