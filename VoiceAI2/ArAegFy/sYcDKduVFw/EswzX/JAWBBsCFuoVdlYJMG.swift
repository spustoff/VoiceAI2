//
//  sSifaBCPcb.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/5/23.
//

import SwiftUI
import AVFoundation

struct sSifaBCPcb: View {
    
    @State private var image: Image? = nil
    
    var hHxBtBCdmT: URL
    
    var body: some View {
        
        Group {
            
            if let image = image {
                
                image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                
            } else {
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.2))
                    .frame(maxWidth: .infinity)
                    .overlay(
                    
                        Image(systemName: "camera")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                    )
            }
        }
        .frame(height: 300)
        .onAppear(perform: ejRZinAkMZ)
    }
    
    func ejRZinAkMZ() {
        
        DispatchQueue.global(qos: .userInitiated).async {
            
            let asset = AVAsset(url: hHxBtBCdmT)
            
            let generator = AVAssetImageGenerator(asset: asset)
            
            generator.appliesPreferredTrackTransform = true
            
            let timestamp = CMTime(seconds: 1, preferredTimescale: 60)
            
            do {
                
                let imageRef = try generator.copyCGImage(at: timestamp, actualTime: nil)
                let uiImage = UIImage(cgImage: imageRef)
                
                DispatchQueue.main.async {
                    
                    self.image = Image(uiImage: uiImage)
                }
                
            } catch {
                
                print("Error generating image: \(error)")
            }
        }
    }
}
