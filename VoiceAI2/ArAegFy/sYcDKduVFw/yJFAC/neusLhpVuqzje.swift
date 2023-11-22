//
//  VideoDuration.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/5/23.
//

import SwiftUI
import AVFoundation

func aEoGdEPlWO(url: URL) -> String {
    
    let asset = AVAsset(url: url)
    let duration = asset.duration
    let durationInSeconds = CMTimeGetSeconds(duration)
    
    let minutes = Int(durationInSeconds / 60)
    let seconds = Int(durationInSeconds.truncatingRemainder(dividingBy: 60))
    
    return String(format: "%d:%02d", minutes, seconds)
}

