//
//  lKmRSGnCzy.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/9/23.
//

import SwiftUI
import AVFoundation
import Speech
import Navigator

final class lKmRSGnCzy: ObservableObject {
    
    @Published var jwwArDmGjb: Bool = false
    @Published var pqZRjPQhwZ: String = ""
    @Published var vFYGjqUfNT: Bool = false
    
    @AppStorage("status") var status: Bool = false
    
    public func vsLTfALPEg() {
        
        gpvgmxrcAo { speechAuthorized in
            
            if speechAuthorized {
                
                self.HAGnoWsJED { micAuthorized in
                    
                    if micAuthorized {
                        
                        self.FTKIMHJhrV { camAuthorized in
                            
                            if camAuthorized {
                                
                                self.vFYGjqUfNT = true
                                self.status = true
                                
                            } else {
                                
                                self.UQqfnTKUQG(message: "Camera permission is denied.")
                            }
                        }
                        
                    } else {
                        
                        self.UQqfnTKUQG(message: "Microphone permission is denied.")
                    }
                }
                
            } else {
                
                self.UQqfnTKUQG(message: "Speech recognition permission is denied.")
            }
        }
    }
    
    private func gpvgmxrcAo(completion: @escaping (Bool) -> Void) {
        
        SFSpeechRecognizer.requestAuthorization { status in
            
            DispatchQueue.main.async {
                
                completion(status == .authorized)
            }
        }
    }
    
    private func HAGnoWsJED(completion: @escaping (Bool) -> Void) {
        
        AVAudioSession.sharedInstance().requestRecordPermission { allowed in
            
            DispatchQueue.main.async {
                
                completion(allowed)
            }
        }
    }
    
    private func FTKIMHJhrV(completion: @escaping (Bool) -> Void) {
        
        AVCaptureDevice.requestAccess(for: .video) { allowed in
            
            DispatchQueue.main.async {
                
                completion(allowed)
            }
        }
    }
    
    private func UQqfnTKUQG(message: String) {
        
        pqZRjPQhwZ = message
        jwwArDmGjb = true
    }
}
