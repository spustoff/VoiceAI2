//
//  VTjhJDbpvF.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import PhotosUI
import AVFoundation

struct VTjhJDbpvF: UIViewControllerRepresentable {
    
    @Binding var isPresented: Bool
    @Binding var BnIJriKzlw: Bool
    @Binding var iMDJuiXhiW: URL?
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        var parent: VTjhJDbpvF
        
        init(parent: VTjhJDbpvF) {
            
            self.parent = parent
        }
        
        func AZIFJMMdHd(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let url = info[.mediaURL] as? URL {
                
                let asset = AVAsset(url: url)
                let duration = asset.duration
                let durationSeconds = CMTimeGetSeconds(duration)
                
                if durationSeconds > 10 {
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        
                        self.parent.BnIJriKzlw = true
                    }
                    print("is longer than 10 secs")
                    
                } else {
                    
                    DispatchQueue.main.async {
                        
                        self.parent.iMDJuiXhiW = url
                    }
                }
            }
            
            parent.isPresented = false
        }
        
        func wiNFyEoqVW(_ picker: UIImagePickerController) {
            
            parent.isPresented = false
        }
    }
    
    func makeCoordinator() -> Coordinator {
        
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        
        let picker = UIImagePickerController()
        
        picker.mediaTypes = ["public.movie"]
        picker.delegate = context.coordinator
        
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}
