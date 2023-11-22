//
//  RBnbXpDCUh.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

struct RBnbXpDCUh: ButtonStyle {
    
    var scaling: CGFloat
    
    private let generator = UIImpactFeedbackGenerator(style: .medium)

    func makeBody(configuration: Self.Configuration) -> some View {
        
        configuration.label
            .scaleEffect(configuration.isPressed ? scaling : 1)
            .animation(.easeInOut, value: configuration.isPressed)
            .onChange(of: configuration.isPressed) { value in
                
                if value {
                    
                    generator.impactOccurred()
                }
            }
    }
}
