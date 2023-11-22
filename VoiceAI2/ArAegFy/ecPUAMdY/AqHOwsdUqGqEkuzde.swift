//
//  QRVHdBCkAY.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Alamofire
import Amplitude
import CoreData
import PhotosUI
import Speech

final class QRVHdBCkAY: ObservableObject {
    
    @Published var uvXPDTpDnT: [ResultModel] = []
    
    @Published var fmmkBblSFu: Bool = false
    @Published var UNEiSeNGuk: String = ""
    
    @Published var GGxCbhXDIM: Bool = false
    @Published var wKhhsClHxH: Bool = false
    @Published var BnIJriKzlw: Bool = false
    @Published var AyxhQiAutq: Bool = false
    @Published var otHUeqiCYO: Bool = false
    @Published var DJbvhoJPFt: Bool = false
    @Published var oJgsSbMCjI: Bool = false
    @Published var LQFzBSIAay: Bool = false
    
    @Published var dQkBKYTRNl: TabCategories = .all
    
    @AppStorage("isPaid") var isPaid: Bool = false
    
    @Published var iBcgDPMqqv: [UuuPWxlQBU] = []
    @Published var HOJuEYfBFf: [UuuPWxlQBU] = []
    @Published var scaAfQxQQJ: Bool = false
    
    @Published var chvXYRIRai: UuuPWxlQBU?
    @Published var oCCLkxZQME: VCUQnAVROI? = .init(language_name: "English", language_slug: "en-UK")
    @Published var PIIYMIibKE: String = ""
    
    @Published var evdDERfpDk: URL? = nil
    @Published var obmhKxvbEl: URL? = nil
    @Published var iMDJuiXhiW: URL? {
        
        didSet {
            
            LQFzBSIAay = false
            
            DXsmroTDjN()
        }
    }
    
    @Published var MCKvhXOjNr: URL? = nil
    @Published var GQlkJDOwfb: ResultModel?
    
    @Published var JIxuvhNJWm: ysrtxTwFEG = ysrtxTwFEG(title: "", subtitle: "")
    @Published var QUIBuRdhOy: Bool = false
    
    @AppStorage("character_event") var character_event: Int = 0
    
    func ttZCOckhQR() {
        
        let tapCount = UserDefaults.standard.integer(forKey: "GalleryVideoTapCount")
        
        let newTapCount = tapCount + 1
        
        UserDefaults.standard.set(newTapCount, forKey: "GalleryVideoTapCount")
        
        let eventProperties: [String: Any] = ["counts": newTapCount]
        
        Amplitude.instance().logEvent("Select_from_galery_tap", withEventProperties: eventProperties)
    }
    
    func icTSWYUCZp() {
        
        let tapCount = UserDefaults.standard.integer(forKey: "RecordVideoTapCount")
        
        let newTapCount = tapCount + 1
        
        UserDefaults.standard.set(newTapCount, forKey: "RecordVideoTapCount")
        
        let eventProperties: [String: Any] = ["counts": newTapCount]
        
        Amplitude.instance().logEvent("Record_video_tap", withEventProperties: eventProperties)
    }
    
    func VLszvpgjAo(for index: UuuPWxlQBU) {
        
        character_event += 1
        
        let eventName = "\(index.speaker_name ?? "nilCharacter")_tap"
        let eventProperties: [String: Any] = ["counts": character_event]
        
        Amplitude.instance().logEvent(eventName, withEventProperties: eventProperties)
    }
    
    func BpjvKtCkpE(index: ResultModel, prompt: String) {
        
        let character = index.character
        
        chvXYRIRai = UuuPWxlQBU(category: character?.category, objectId: character?.objectId, speaker_id: character?.speaker_id, speaker_name: character?.speaker_name, voice_id: character?.voice_id)
        evdDERfpDk = index.videoURL_noAudio
        PIIYMIibKE = prompt
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            
            self.XzDLpPipFg()
        }
    }
    
    func NqZKbVMfUU() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<ResultModel> = ResultModel.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: false)
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            
            let fetchedVoices = try context.fetch(fetchRequest)
            
            self.uvXPDTpDnT = fetchedVoices
            
        } catch let error {
            
            print("Failed to fetch saved voices: \(error)")
        }
    }
    
    func QtwcbpqOeg() {
        
        do {
            
            let context = CoreDataStack.shared.persistentContainer.viewContext
            
            let voiceResponse = ResultModel(context: context)
            let characterEntity = CharacterModel(context: context)
            
            if let currentCharacter = self.chvXYRIRai {
                
                characterEntity.category = currentCharacter.category
                characterEntity.objectId = currentCharacter.objectId
                characterEntity.speaker_id = currentCharacter.speaker_id
                characterEntity.speaker_name = currentCharacter.speaker_name
                characterEntity.voice_id = currentCharacter.voice_id
                
                voiceResponse.character = characterEntity
            }
            
            voiceResponse.date = Date()
            voiceResponse.time_string = Date().vWHKzJqZpE(format: "HH:mm")
            voiceResponse.date_string = Date().vWHKzJqZpE(format: "MMM d")
            
            if let video = self.MCKvhXOjNr {
                
                voiceResponse.video_duration = aEoGdEPlWO(url: video)
            }
            
            voiceResponse.language = self.oCCLkxZQME?.language_name
            voiceResponse.prompt = self.PIIYMIibKE
            voiceResponse.uniqueID = Int64(Int.random(in: 1...10000))
            
            voiceResponse.videoURL = self.MCKvhXOjNr
            voiceResponse.videoURL_noAudio = self.evdDERfpDk
            
            self.GQlkJDOwfb = voiceResponse
            
            try context.save()
            
        } catch let error {
            
            print("Failed to save VoiceResponse: \(error)")
        }
    }
    
    func WOhiZDupfy(hHxBtBCdmT: URL, audioURL: URL, completion: @escaping (URL?) -> Void) {
        
        let mixComposition = AVMutableComposition()
        
        // Video
        let videoAsset = AVAsset(url: hHxBtBCdmT)
        guard let videoTrack = mixComposition.addMutableTrack(withMediaType: .video, preferredTrackID: kCMPersistentTrackID_Invalid),
              let assetVideoTrack = videoAsset.tracks(withMediaType: .video).first else {
            print("Error creating video track")
            completion(nil)
            return
        }
        
        do {
            try videoTrack.insertTimeRange(CMTimeRangeMake(start: .zero, duration: videoAsset.duration), of: assetVideoTrack, at: .zero)
        } catch {
            print("Error inserting video track: \(error)")
            completion(nil)
            return
        }
        
        // Audio
        let audioAsset = AVAsset(url: audioURL)
        guard let audioTrack = mixComposition.addMutableTrack(withMediaType: .audio, preferredTrackID: kCMPersistentTrackID_Invalid),
              let assetAudioTrack = audioAsset.tracks(withMediaType: .audio).first else {
            print("Error creating audio track")
            completion(nil)
            return
        }
        
        do {
            try audioTrack.insertTimeRange(CMTimeRangeMake(start: .zero, duration: audioAsset.duration), of: assetAudioTrack, at: .zero)
        } catch {
            print("Error inserting audio track: \(error)")
            completion(nil)
            return
        }
        
        let outputURL = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("mp4")
        
        guard let exporter = AVAssetExportSession(asset: mixComposition, presetName: AVAssetExportPresetHighestQuality) else {
            print("Error creating exporter")
            completion(nil)
            return
        }
        
        exporter.outputURL = outputURL
        exporter.outputFileType = .mp4
        
        // Correct Video Orientation
        let videoComposition = AVMutableVideoComposition(propertiesOf: videoAsset)
        let instruction = AVMutableVideoCompositionInstruction()
        instruction.timeRange = CMTimeRangeMake(start: .zero, duration: mixComposition.duration)
        
        let layerInstruction = AVMutableVideoCompositionLayerInstruction(assetTrack: videoTrack)
        layerInstruction.setTransform(assetVideoTrack.preferredTransform, at: .zero)
        instruction.layerInstructions = [layerInstruction]
        
        videoComposition.instructions = [instruction]
        exporter.videoComposition = videoComposition
        
        exporter.exportAsynchronously {
            switch exporter.status {
            case .completed:
                completion(outputURL)
            case .failed, .cancelled:
                print("Error exporting: \(String(describing: exporter.error))")
                completion(nil)
            default:
                break
            }
        }
    }

    func iOApWkKLre(audioDownloadURL: URL) {
        
        guard let hHxBtBCdmT = self.evdDERfpDk else {
            
            print("error with evdDERfpDk")
            self.GzWumrliWS(title: "Unknown Error", subtitle: "Your video without audio is nil")
            
            return
        }
        
        let destination: DownloadRequest.Destination = { _, _ in
            let documentsURL = FileManager.default.temporaryDirectory
            let audioFileName = audioDownloadURL.lastPathComponent
            let fileURL = documentsURL.appendingPathComponent(audioFileName)
            return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
        }
        
        AF.download(audioDownloadURL, to: destination)
            .downloadProgress { progress in
                print("Download Progress: \(progress.fractionCompleted)")
            }
            .response { response in
                if response.error != nil {
                    print("Error downloading audio: \(String(describing: response.error))")
                    return
                }
                
                guard let localURL = response.fileURL else {
                    print("error with localURL")
                    return
                }
                
                HFBlPAIoZW(inputURL: localURL) { convertedURL in
                    guard let convertedURL = convertedURL else {
                        print("error converting mp3 to m4a")
                        return
                    }
                    
                    print("successfully converted: \(convertedURL)")
                    // Используйте convertedURL для следующего этапа
                    self.WOhiZDupfy(hHxBtBCdmT: hHxBtBCdmT, audioURL: convertedURL, completion: { url in
                        
                        DispatchQueue.main.async {
                            
                            self.MCKvhXOjNr = url
                            self.otHUeqiCYO = false
                            
                            self.QtwcbpqOeg()
                            self.NqZKbVMfUU()
                        
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                
                                self.DJbvhoJPFt = true
                            }
                            
                            self.grShesXDVM()
                        }
                        
                        print("successfully merged video and audio! good!")
                    })
                }
            }
    }
    
    func RLxJPeKUrl() {
        
        guard SFSpeechRecognizer.authorizationStatus() == .authorized else {
            
            wARApzNxbg()
            
            return
        }
        
        guard let audioURL = obmhKxvbEl else {
            
            print("Audio URL is nil")
            
            self.GzWumrliWS(title: "Recognition Error", subtitle: "Your audio is empty")
            
            return
        }
        
        guard let audioData = try? Data(contentsOf: audioURL) else {
            
            print("Unable to load audio data")
            
            self.GzWumrliWS(title: "Recognition Error", subtitle: "Unable to load audio data")
            
            return
        }
        
        let asset = AVURLAsset(url: audioURL)
        
        guard let audioTrack = asset.tracks(withMediaType: .audio).first else {
            
            print("Unable to find audio track")
            
            self.GzWumrliWS(title: "Recognition Error", subtitle: "Unable to find audio track")
            
            return
        }
        
        let audioFormatDesc = audioTrack.formatDescriptions.first
        let audioFormatBlock = CMAudioFormatDescriptionGetStreamBasicDescription(audioFormatDesc as! CMAudioFormatDescription)
        
        guard (audioFormatBlock?.pointee) != nil else {
            
            print("Unable to get audio stream basic description")
            
            self.GzWumrliWS(title: "Recognition Error", subtitle: "Unable to get audio stream basic description")
            
            return
        }
        
//        let bitrate = Float64(audioData.count * 8) / CMTimeGetSeconds(asset.duration)
        
        let recognizer = SFSpeechRecognizer()
        let request = SFSpeechURLRecognitionRequest(url: audioURL)
        
        recognizer?.recognitionTask(with: request) { [weak self] (result, error) in
            
            guard self != nil else { return }
            
            if let error = error {
                
                self?.GzWumrliWS(title: "Recognition Error", subtitle: "Your video is missing any voiceover")
                
                print("Recognition Error: \(error)")
                
            } else if let result = result {
                
                if result.isFinal {
                    
                    DispatchQueue.main.async {
                        
                        self?.PIIYMIibKE = result.bestTranscription.formattedString
                        self?.AyxhQiAutq = true
                    }
                }
            }
        }
    }
    
    func GzWumrliWS(title: String, subtitle: String) {
        
        self.JIxuvhNJWm = ysrtxTwFEG(title: title, subtitle: subtitle)
        self.QUIBuRdhOy = true
    }
    
    func DXsmroTDjN() {
        
        guard let hHxBtBCdmT = iMDJuiXhiW else { return }
        
        let asset = AVAsset(url: hHxBtBCdmT)
        guard let audioTrack = asset.tracks(withMediaType: .audio).first,
              let videoTrack = asset.tracks(withMediaType: .video).first else { return }
        
        // экспорт аудио
        let audioComposition = AVMutableComposition()
        guard let compositionAudioTrack = audioComposition.addMutableTrack(
            withMediaType: .audio,
            preferredTrackID: kCMPersistentTrackID_Invalid) else { return }
        
        do {
            
            try compositionAudioTrack.insertTimeRange(
                CMTimeRange(start: CMTime.zero, duration: asset.duration),
                of: audioTrack,
                at: CMTime.zero)
            
        } catch {
    
            assertionFailure("Error extracting audio: \(error)")
            
            self.GzWumrliWS(title: "Audio extracting error", subtitle: "Unknown error")
            
            print("Error extracting audio: \(error)")
            
            return
        }
        
        let audioOutputURL = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("m4a")
        guard let audioExportSession = AVAssetExportSession(asset: audioComposition, presetName: AVAssetExportPresetAppleM4A) else { return }
        audioExportSession.outputURL = audioOutputURL
        audioExportSession.outputFileType = .m4a
        
        // экспорт видео
        let videoComposition = AVMutableComposition()
        guard let compositionVideoTrack = videoComposition.addMutableTrack(
            withMediaType: .video,
            preferredTrackID: kCMPersistentTrackID_Invalid) else { return }
        
        do {
            
            try compositionVideoTrack.insertTimeRange(
                CMTimeRange(start: CMTime.zero, duration: asset.duration),
                of: videoTrack,
                at: CMTime.zero)
            
        } catch {
            
            assertionFailure("Error extracting audio: \(error)")
            
            self.GzWumrliWS(title: "Video extracting error", subtitle: "Unknown error")
            
            print("Error extracting video: \(error)")
            
            return
        }
        
        let videoOutputURL = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("mp4")
        guard let videoExportSession = AVAssetExportSession(asset: videoComposition, presetName: AVAssetExportPresetHighestQuality) else { return }
        videoExportSession.outputURL = videoOutputURL
        videoExportSession.outputFileType = .mp4
        
        // Video composition and rotation setup
        let videoComp = AVMutableVideoComposition()
        
        let transformer = AVMutableVideoCompositionLayerInstruction(assetTrack: compositionVideoTrack)

        // Получите предпочитаемое преобразование из видео трека
        let t1 = videoTrack.preferredTransform

        // Помните, что если видео перевернуто, вы можете захотеть обновить renderSize
        let isVideoAssetPortrait = abs(t1.a) == 0 && abs(t1.b) == 1.0 && abs(t1.c) == 1.0 && abs(t1.d) == 0
        videoComp.renderSize = isVideoAssetPortrait ? CGSize(width: videoTrack.naturalSize.height, height: videoTrack.naturalSize.width) : CGSize(width: videoTrack.naturalSize.width, height: videoTrack.naturalSize.height)
        videoComp.frameDuration = CMTime(value: 1, timescale: 60)

        transformer.setTransform(t1, at: .zero)

        let instruction = AVMutableVideoCompositionInstruction()
        instruction.timeRange = CMTimeRange(start: .zero, duration: asset.duration)
        instruction.layerInstructions = [transformer]
        videoComp.instructions = [instruction]

        videoExportSession.videoComposition = videoComp
        
        // сохранение аудио
        audioExportSession.exportAsynchronously { [weak self] in
            guard let self = self else { return }
            
            switch audioExportSession.status {
            case .completed:
                
                DispatchQueue.main.async {
                    
                    self.obmhKxvbEl = audioOutputURL
                    
                    print("Audio Extracted to \(audioOutputURL)")
                    
                    if SFSpeechRecognizer.authorizationStatus() == .authorized {
                        
                        self.RLxJPeKUrl()
                        
                    } else {
                        
                        self.wARApzNxbg()
                    }
                }
            case .failed, .cancelled:
                
                self.GzWumrliWS(title: "Audio extracting error", subtitle: "Unknown error")
                
                print("Failed to extract audio: \(String(describing: audioExportSession.error))")
                
            default:
                break
            }
        }
        
        // сохранение видео
        videoExportSession.exportAsynchronously {
            switch videoExportSession.status {
            case .completed:
                print("Video without audio saved to \(videoOutputURL)")
                
                DispatchQueue.main.async {
                    
                    withAnimation(.spring()) {
                        
                        self.GGxCbhXDIM = false
                    }
                    
                    self.evdDERfpDk = videoOutputURL
                }
                
            case .failed, .cancelled:
                
                self.GzWumrliWS(title: "Save video", subtitle: "Failed to save video: \(String(describing: videoExportSession.error))")
                print("Failed to save video: \(String(describing: videoExportSession.error))")
            default:
                break
            }
        }
    }

    
    func grShesXDVM() {
        
        withAnimation(.spring()) {
            
            self.GGxCbhXDIM = false
        }
        
        self.AyxhQiAutq = false
        self.otHUeqiCYO = false
        self.fmmkBblSFu = false
        self.PIIYMIibKE.removeAll()
        self.chvXYRIRai = nil
    }
    
    func XzDLpPipFg() {
        
        guard let character_voice = chvXYRIRai?.speaker_id else { 
            
            self.GzWumrliWS(title: "Character is empty", subtitle: "You haven't chosen a character")
            
            return
        }
        
        otHUeqiCYO = true
        fmmkBblSFu = true
        
        let parameters: [String: Any] = [
            
            "text": PIIYMIibKE,
            "isSubbed": true,
            "speaker_id": character_voice,
            "version": 2,
            "user_id": DvdAltisJl(length: 8),
        ]
        
        print(parameters)
        
        let headers: HTTPHeaders = [
            
            "Content-Type": "application/json"
        ]
        
        AF.request("https://voice-ai.herokuapp.com/XzDLpPipFg",
                   method: .post,
                   parameters: parameters,
                   encoding: JSONEncoding.default,
                   headers: headers)
        .responseDecodable(of: rpEOPjdRYu.self) { response in
            switch response.result {
                
            case .success(let success):
                
                guard let audio_url = URL(string: success.data) else { 
                    
                    print("error with audio_url")
                    
                    self.GzWumrliWS(title: "Unknown Error", subtitle: "Your audio's url is nil")
                    
                    return
                }
                
                print("audio_url: \(audio_url)")
                print("downloading and merging audio...")
                
                self.fmmkBblSFu = false
                
                self.iOApWkKLre(audioDownloadURL: audio_url)
                
            case .failure(let failure):
                
                print("Parse error")
                
                self.GzWumrliWS(title: "System error", subtitle: "Unknown error")
                
                debugPrint("Parse error - \(failure)")
                
                self.fmmkBblSFu = false
                self.otHUeqiCYO = false
            }
        }
    }
    
    func rGbqmwFikj() {
        
        guard let target = oCCLkxZQME?.language_slug else {
            
            print("language not selected")
            
            self.GzWumrliWS(title: "Language", subtitle: "You're not selected language")
            
            return
        }
        
        self.otHUeqiCYO = true
        
        guard let detectedLang = MiUTFkjUyt(for: PIIYMIibKE) else {
            
            print("not detected lang")
            
            return
        }
        
        guard detectedLang != target else {
            
            self.fmmkBblSFu = false
            
            print("detected language not equal to target")
            
            self.XzDLpPipFg()
            
            return
        }
        
        fmmkBblSFu = true
        
        let parameters: [String: Any] = [
            
            "key": "AIzaSyB8WZEQXMiIfwwvuZnocbOWob1ZtFC-vOA",
            "q": PIIYMIibKE,
            "source": detectedLang,
            "target": target,
            "format": "text",
        ]
        
        AF.request("https://translation.googleapis.com/language/translate/v2",
                   method: .get,
                   parameters: parameters,
                   encoding: URLEncoding.default)
        .responseDecodable(of: BzqFEMHBzs.self) { response in
            switch response.result {
                
            case .success(let success):
                
                self.fmmkBblSFu = false
                
                guard let result = success.data.translations.first?.translatedText else {
                    
                    print("translation error")
                    
                    return
                }
                
                self.PIIYMIibKE = result
                
                self.XzDLpPipFg()
                
            case .failure(let failure):
                
                debugPrint("Parse error - \(failure)")
                
                self.fmmkBblSFu = false
            }
        }
    }
    
    func aodEPuyZXW() -> [UuuPWxlQBU] {
        
        var arrayResult: [UuuPWxlQBU] = []
        
        switch dQkBKYTRNl {
        case .all:
            arrayResult = iBcgDPMqqv
        case .politics:
            arrayResult = iBcgDPMqqv.filter{$0.category == dQkBKYTRNl.text}
        case .musicians:
            arrayResult = iBcgDPMqqv.filter{$0.category == dQkBKYTRNl.text}
        case .celebrities:
            arrayResult = iBcgDPMqqv.filter{$0.category == dQkBKYTRNl.text}
        case .iBcgDPMqqv:
            arrayResult = iBcgDPMqqv.filter{$0.category == dQkBKYTRNl.text}
        case .other:
            arrayResult = iBcgDPMqqv.filter{$0.category == dQkBKYTRNl.text}
        }
        
        guard UNEiSeNGuk.isEmpty else {
            
            return arrayResult.filter{($0.speaker_name ?? "").lowercased().contains(UNEiSeNGuk.lowercased())}
        }
        
        return arrayResult
    }
    
    func nzPKKymCPo() {
        
        fmmkBblSFu = true
        
        let parameters: [String: Any] = [
        
            "user_id": DvdAltisJl(length: 8)
        ]
        let request = AF.request("https://voice-ai.herokuapp.com/getDatabaseVoicesWithCustom", method: .post, parameters: parameters, encoding: JSONEncoding.default)
        
        request.responseDecodable(of: WFKoYYDiUQ.self) { response in
            
            switch response.result {
                
            case .success(let success):
                
                guard let success = success.data else { return }
                
                self.iBcgDPMqqv = success
                
                if !self.isPaid {
                    
                    self.HOJuEYfBFf = Array(success.prefix(10))
                }
                
                self.fmmkBblSFu = false
                
            case .failure(let failure):
                
                debugPrint("Parse error - \(failure)")
                
                self.fmmkBblSFu = false
            }
        }
    }
    
    func BGXqWgaJYc() {
        
        PHPhotoLibrary.requestAuthorization(for: .readWrite) { status in
            switch status {
                
            case .denied:
                DispatchQueue.main.async {
                    
                    self.GzWumrliWS(title: "Gallery permission", subtitle: "You need to give permission to use your photos to use the features")
                }
                print("access denied")
                
            case .authorized:
                
                DispatchQueue.main.async {
                    
                    self.wKhhsClHxH = true
                }
                
                print("accessed")
                
            case .limited:
                
                DispatchQueue.main.async {
                    
                    self.wKhhsClHxH = true
                }
                
                print("accessed")
                
            default:
                // Обрабатываем отказ в доступ
                DispatchQueue.main.async {
                    
                    self.GzWumrliWS(title: "Gallery permission", subtitle: "You need to give permission to use your photos to use the features")
                }
                print("access denied")
                break
            }
        }
    }
    
    func wARApzNxbg() {
        
        SFSpeechRecognizer.requestAuthorization { status in
            
            DispatchQueue.main.async {
                
                if status == .authorized {
                    
                    print("Transcription permission allowed.")
                    
                    self.RLxJPeKUrl()
                    
                } else {
                    
                    self.GzWumrliWS(title: "Transcription permission", subtitle: "You did not authorize the transcription")
                    
                    print("Transcription permission denied")
                }
            }
        }
    }
}
