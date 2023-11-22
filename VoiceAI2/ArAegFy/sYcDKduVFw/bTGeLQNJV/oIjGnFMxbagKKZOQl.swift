//
//  bxbKqeukQs.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

struct bxbKqeukQs: ViewModifier {
    
    var radius: CGFloat
    var corners: UIRectCorner

    struct OoJsLLEzLI: Shape {

        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners

        func path(in rect: CGRect) -> Path {
            
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            
            return Path(path.cgPath)
        }
    }

    func body(content: Content) -> some View {
        
        content
            .clipShape(OoJsLLEzLI(radius: radius, corners: corners))
    }
}

extension View {
    
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        
        ModifiedContent(content: self, modifier: bxbKqeukQs(radius: radius, corners: corners))
    }
}
