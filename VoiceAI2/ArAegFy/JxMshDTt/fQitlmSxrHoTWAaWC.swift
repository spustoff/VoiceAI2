//
//  cLATzUTpvd.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import StoreKit

final class cLATzUTpvd: ObservableObject {
    
    @AppStorage("isPaid") var isPaid: Bool = false
    
    @State var VKRNsvAVFr = nUHsnaouIK()
    
    @Published var mpPKNSkinL: [String: ButtonTypes] = [
        
        "arrow.counterclockwise": .restore,
        "star": .rate,
        "square.and.arrow.up": .share,
        "envelope.badge": .contact,
        "text.justify.leading": .usage
    ]
    
    public func RSGaivzXvq(_ type: ButtonTypes) {
        
        switch type {
            
        case .restore:
            VKRNsvAVFr.restorePurchases()
            
        case .rate:
            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                
                SKStoreReviewController.requestReview(in: scene)
            }
        case .share:
            
            guard let url = URL(string: "https://apps.apple.com/ru/app/ai-voice-changer-funny-voices/id6458223730") else { return }
            
            kcCUXBfLRj(url: url)
            
        case .contact:
            guard let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSee7lOsNutLARI6UVIIIhrFrcMgqPVNi90ZFxACvEgDPGaUsg/viewform?usp=sharing") else { return }
            
            UIApplication.shared.open(url)
            
        case .usage:
            guard let url = URL(string: "https://docs.google.com/document/d/1LQjj3qW-tKlB5M8bnmItdHPk34FfMyds7qltjw7GI6g/edit?usp=sharing") else { return }
            
            UIApplication.shared.open(url)
        }
    }
    
    private func kcCUXBfLRj(url: URL) {
        
        let activityController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(activityController, animated: true, completion: nil)
    }
}

enum ButtonTypes: CaseIterable {
    
    case restore, rate, share, contact, usage
    
    var text: String {
        
        switch self {
            
        case .restore:
            return "Restore Purchases"
            
        case .rate:
            return "Rate Us"
            
        case .share:
            return "Share with friends"
            
        case .contact:
            return "Contact Us"
            
        case .usage:
            return "Usage Policy"
        }
    }
}
