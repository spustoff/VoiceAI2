//
//  IwFKmrzhAk.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI

final class IwFKmrzhAk: ObservableObject {
    
    @Published var UNEiSeNGuk: String = ""
    @Published var QIvnjEWPqI: [VCUQnAVROI] = [
        
        VCUQnAVROI(language_name: "English", language_slug: "en-UK"),
        VCUQnAVROI(language_name: "Russian", language_slug: "ru"),
        VCUQnAVROI(language_name: "Turkish", language_slug: "tr"),
        VCUQnAVROI(language_name: "German", language_slug: "de"),
        VCUQnAVROI(language_name: "Ukrainian", language_slug: "uk"),
        VCUQnAVROI(language_name: "French", language_slug: "fr-FR"),
        VCUQnAVROI(language_name: "Azerbaijani", language_slug: "az"),
        VCUQnAVROI(language_name: "Bulgarian", language_slug: "bg"),
        VCUQnAVROI(language_name: "Romanian", language_slug: "ro"),
    ]

    @Published var aMtwjSnfMG: LanguageCategories = .all
    
    @AppStorage("saved_languages") var saved_languages: [String] = []
    
    func ebGAbWjgEz() -> [VCUQnAVROI] {
        
        var filteredArray: [VCUQnAVROI] = []
        
        switch aMtwjSnfMG {
        case .all:
            filteredArray = QIvnjEWPqI
        case .favorites:
            filteredArray = QIvnjEWPqI.filter{saved_languages.contains($0.language_name)}
        }
        
        guard UNEiSeNGuk.isEmpty else {
            
            return filteredArray.filter{($0.language_name).lowercased().contains(UNEiSeNGuk.lowercased())}
        }
        
        return filteredArray
    }
    
    func FFOfukKEWL(_ index: String) {
        
        if saved_languages.contains(index) {
            
            if let indexer = saved_languages.firstIndex(of: index) {
                
                saved_languages.remove(at: indexer)
            }
            
        } else {
            
            saved_languages.append(index)
        }
    }
    
    func oyFwonRywG(_ index: String) -> Bool {
        
        return saved_languages.contains(index)
    }
}
