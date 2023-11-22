//
//  ZijcvRIKzE.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

struct ZijcvRIKzE: ViewModifier {
    
    @State private var isAnimated: Bool = false

    func body(content: Content) -> some View {
        
        content
            .scaleEffect(isAnimated ? 1 : 0.95)
            .opacity(isAnimated ? 1 : 0)
            .ignoresSafeArea()
            .onAppear {
                
                withAnimation(.spring()) {
                    
                    isAnimated = true
                }
            }
    }
}
