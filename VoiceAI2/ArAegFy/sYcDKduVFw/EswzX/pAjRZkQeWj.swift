//
//  BYwTjHahIm.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

struct BYwTjHahIm: UIViewControllerRepresentable {
    
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: Context) -> UIActivityViewController {
        
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
