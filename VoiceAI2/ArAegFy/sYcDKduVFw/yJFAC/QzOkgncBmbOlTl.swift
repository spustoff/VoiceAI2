//
//  IcvNenBaUc.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/5/23.
//

import SwiftUI
import Combine

struct NpERTASogs {
    
   var currentHeight: CGFloat = 0
   var animationDuration: Double = 0
    
}

struct IcvNenBaUc: ViewModifier {

    @State var scykWetgBo: NpERTASogs = NpERTASogs()
    
    func body(content: Content) -> some View {
        content
            .padding(.bottom, self.scykWetgBo.currentHeight)
            .edgesIgnoringSafeArea(self.scykWetgBo.currentHeight == 0 ? Edge.Set() : .bottom)
            .animation(self.scykWetgBo.currentHeight == 0 ?
                       Animation.spring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.8) :
                       Animation.spring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.8), value: UUID())
            .onAppear(perform: RsCWmKjCSX)
            
    }

    private let keyboardWillOpen = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map {
            NpERTASogs(currentHeight: ($0.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect).height,
                             animationDuration: ($0.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double))
            
        }

    private let keyboardWillHide =  NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map { NpERTASogs(currentHeight: CGFloat.zero,
        animationDuration: ($0.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double)) }

    private func RsCWmKjCSX() {
        _ = Publishers.Merge(keyboardWillOpen, keyboardWillHide)
            .subscribe(on: RunLoop.main)
            .assign(to: \.self.scykWetgBo, on: self)
    }
}
