//
//  ConvertAudio.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import AVFoundation

func HFBlPAIoZW(inputURL: URL, completion: @escaping (URL?) -> Void) {
    
    let outputFileName = UUID().uuidString + ".m4a"
    let outputURL = FileManager.default.temporaryDirectory.appendingPathComponent(outputFileName)
    
    guard let asset = AVAsset(url: inputURL) as? AVURLAsset else {
        completion(nil)
        return
    }
    
    guard
        let exportSession = AVAssetExportSession(asset: asset, presetName: AVAssetExportPresetAppleM4A)
    else {
        completion(nil)
        return
    }
    
    exportSession.outputURL = outputURL
    exportSession.outputFileType = .m4a
    
    if exportSession.supportedFileTypes.contains(.m4a) {
        exportSession.exportAsynchronously {
            switch exportSession.status {
            case .completed:
                completion(outputURL)
            case .failed, .cancelled:
                print("Failed: \(String(describing: exportSession.error))")
                completion(nil)
            default:
                break
            }
        }
    } else {
        print("M4A format is not supported for this asset")
        completion(nil)
    }
}


