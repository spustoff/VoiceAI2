//
//  YJUcVYcTuR.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import CoreData

final class YJUcVYcTuR: ObservableObject {
    
    @Published var iMDJuiXhiW: ResultModel?
    
    @Published var mjbrNQGhHS: Bool = false
    @Published var JepbHwhbeP: Bool = false
    @Published var aOzAkZvrFt: Bool = false
    
    @Published var XhVzmykswk: CGFloat = 40.0
    @Published var AGfdnZyLuN: Bool = false {
        
        didSet {
            
            if AGfdnZyLuN == true {
                
                syQAGMFvZW = iMDJuiXhiW?.prompt ?? ""
            }
        }
    }
    
    @Published var syQAGMFvZW: String = ""
}
