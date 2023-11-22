//
//  QeifGVVdYg.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/6/23.
//

import SwiftUI
import AVFoundation
import Amplitude
import PhotosUI
import AVKit

struct QeifGVVdYg: UIViewControllerRepresentable {
    
    class Coordinator: NSObject, AVCaptureFileOutputRecordingDelegate {
        
        var parent: QeifGVVdYg
        
        init(parent: QeifGVVdYg) {
            
            self.parent = parent
        }
        
        func fileOutput(_ output: AVCaptureFileOutput,
                        didFinishRecordingTo outputFileURL: URL,
                        from connections: [AVCaptureConnection],
                        error: Error?) {
            
            // Место для обработки записанного видео
            
//            PHPhotoLibrary.shared().performChanges({
//                PHAssetChangeRequest.creationRequestForAssetFromVideo(atFileURL: outputFileURL)
//            }) { saved, error in
//                if saved {
//                    print("Video was saved to photo library")
//                } else {
//                    print("Error saving the video: \(String(describing: error))")
//                }
//            }
            
            DispatchQueue.main.async {
                
                self.parent.hHxBtBCdmT = outputFileURL
                
                THKMpEkTFJ(hHxBtBCdmT: outputFileURL)
            }
        }
    }
    
    @Binding var eIkThBfcxj: Bool
    @Binding var ajUQzUUVxV: Bool
    @Binding var hHxBtBCdmT: URL?
    
    func makeCoordinator() -> Coordinator {
        
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> ojVLTMTeoV {
        
        let controller = ojVLTMTeoV()
        
        controller.delegate = context.coordinator
        controller.ajUQzUUVxV = ajUQzUUVxV
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: ojVLTMTeoV, context: Context) {
        
        if eIkThBfcxj {
            
            uiViewController.startRecording()
            
        } else {
            
            uiViewController.stopRecording()
        }
        
        if uiViewController.ajUQzUUVxV != ajUQzUUVxV {
            
            uiViewController.ajUQzUUVxV = ajUQzUUVxV
            uiViewController.yYJhpjZrkN()
        }
    }
}

class ojVLTMTeoV: UIViewController {
    
    var videoRecorder: AVCaptureMovieFileOutput!
    var delegate: AVCaptureFileOutputRecordingDelegate?
    var captureSession: AVCaptureSession!
    var ajUQzUUVxV: Bool = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        yGDxFzIvoM()
    }
    
    func yGDxFzIvoM() {
        
        captureSession = AVCaptureSession()
        yYJhpjZrkN()

        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        
        // Растянуть слой на весь экран
        previewLayer.frame = UIScreen.main.bounds
        
        // Если вы хотите, чтобы видео заполняло весь экран и возможно было обрезано
         previewLayer.videoGravity = .resizeAspectFill
        
        view.layer.addSublayer(previewLayer)
        
        videoRecorder = AVCaptureMovieFileOutput()
        captureSession.addOutput(videoRecorder)
        
        DispatchQueue.main.async {
            
            self.captureSession.startRunning()
        }
    }
    
    func yYJhpjZrkN() {
        
        captureSession.inputs.forEach { input in
            
            captureSession.removeInput(input)
        }
        
        guard let videoCaptureDevice = ybgdBByfSn(position: ajUQzUUVxV ? .front : .back),
              let audioCaptureDevice = AVCaptureDevice.default(for: .audio),
              let videoInput = try? AVCaptureDeviceInput(device: videoCaptureDevice),
              let audioInput = try? AVCaptureDeviceInput(device: audioCaptureDevice) else { return }
        
        captureSession.addInput(videoInput)
        captureSession.addInput(audioInput)
    }
    
    func ybgdBByfSn(position: AVCaptureDevice.Position) -> AVCaptureDevice? {
        
        return AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: position)
    }
    
    func startRecording() {
        
        let outputDirectory = FileManager.default.temporaryDirectory
        let outputURL = outputDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("mov")
        
        videoRecorder.startRecording(to: outputURL, recordingDelegate: delegate!)
    }
    
    func stopRecording() {
        
        videoRecorder.stopRecording()
    }
}

func THKMpEkTFJ(hHxBtBCdmT: URL) {
    
    let eventProperties: [String: Any] = ["duration": aEoGdEPlWO(url: hHxBtBCdmT)]
    
    Amplitude.instance().logEvent("Start_recording_video", withEventProperties: eventProperties)
}
