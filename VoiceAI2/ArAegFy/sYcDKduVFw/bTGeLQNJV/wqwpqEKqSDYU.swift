//
//  ifExtensions.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/6/23.
//

import SwiftUI

@available(OSX 11.0, *)
public extension View {
    
    @ViewBuilder
    func `if`<Content: View>(_ condition: Bool, content: (Self) -> Content) -> some View {
        if condition {
            content(self)
        } else {
            self
        }
    }
}

@available(OSX 11.0, *)
public extension View {
    
    @ViewBuilder
    func `if`<TrueContent: View, FalseContent: View>(_ condition: Bool, ifTrue trueContent: (Self) -> TrueContent, else falseContent: (Self) -> FalseContent) -> some View {
        if condition {
            trueContent(self)
        } else {
            falseContent(self)
        }
    }
}
