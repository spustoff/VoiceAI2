//
//  AllowSwipes.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

extension UINavigationController: UIGestureRecognizerDelegate {
    
    override open func viewDidLoad() {
        
        super.viewDidLoad()
        
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        return viewControllers.count > 1
    }
}
