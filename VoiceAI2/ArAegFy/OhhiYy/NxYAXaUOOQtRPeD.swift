//
//  CJlegiCxpA.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Combine
import StoreKit

final class CJlegiCxpA: ObservableObject {
    
    @AppStorage("status") var status: Bool = false
    
    private var reviewScreenListener = Set<AnyCancellable>()
    
    @Published var DoJpyLgoKS: Int = 1
    @Published var WHcyRkEhKv: [sPVkQktMMY] = [
    
        sPVkQktMMY(id: 1, title: "Feel like a star with celebrity voices!", subtitle: "Our AI will make your videos more fun", image: "splash_1"),
        sPVkQktMMY(id: 2, title: "Change the voice of your videos easily", subtitle: "Record a video in just a few clicks", image: "splash_2"),
        sPVkQktMMY(id: 3, title: "Bring your stories to life and surprise your friends", subtitle: "Edit voice in video and change QIvnjEWPqI", image: "splash_3"),
        sPVkQktMMY(id: 4, title: "Rate our app\nin the AppStore", subtitle: "It helps us make the app even better", image: "splash_4"),
    ]

    init() {
        
        $DoJpyLgoKS
            .sink { [weak self] url in
                
                guard let self = self else { return }
                
                if url == self.WHcyRkEhKv.count {
                    
                    if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                        
                        SKStoreReviewController.requestReview(in: scene)
                    }
                }
            }
            .store(in: &reviewScreenListener)
    }
    
    public func shbmqAnHgu() {
        
        if DoJpyLgoKS != WHcyRkEhKv.count {
            
            withAnimation(.spring()) {
                
                self.DoJpyLgoKS += 1
            }
            
        } else {
            
            withAnimation(.spring()) {
                
                self.status = true
            }
        }
    }
}
