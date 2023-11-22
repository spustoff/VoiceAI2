//
//  TimeFormatter.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

func MYbhDIhezU(time: Double) -> String {
    
    if time.isFinite {
        
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        
        return String(format: "%02d:%02d", minutes, seconds)
        
    } else {
        
        return "00:00"
    }
}
