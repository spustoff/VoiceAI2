//
//  OxPXFBAkbC.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI
import AVKit

struct OxPXFBAkbC: UIViewControllerRepresentable {
    
    var hHxBtBCdmT: URL
    
    func makeUIViewController(context: Context) -> OdZxbUlXwr {
        
        return OdZxbUlXwr(hHxBtBCdmT: hHxBtBCdmT)
    }
    
    func updateUIViewController(_ uiViewController: OdZxbUlXwr, context: Context) {}
}

class OdZxbUlXwr: UIViewController {
    
    var player: AVPlayer!
    var playerViewController: AVPlayerViewController!
    var hHxBtBCdmT: URL
    var playPauseButton: UIButton!
    
    init(hHxBtBCdmT: URL) {
        self.hHxBtBCdmT = hHxBtBCdmT
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Failed to set audio session category.")
        }
        
        vLuknnzcfG()
        PQHqjivIpj()
        
        let blockingView = iQsdUxJIuq(frame: self.view.bounds)
        blockingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blockingView.backgroundColor = .clear
        self.view.addSubview(blockingView)
        
        self.view.bringSubviewToFront(playPauseButton)
    }
    
    func vLuknnzcfG() {
        
        
        player = AVPlayer(url: hHxBtBCdmT)
        playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.videoGravity = .resizeAspectFill
        playerViewController.showsPlaybackControls = false
        
        playerViewController.view.frame = self.view.bounds
        self.addChild(playerViewController)
        self.view.addSubview(playerViewController.view)
        playerViewController.didMove(toParent: self)
        
        NotificationCenter.default.addObserver(self, selector: #selector(FRmKvXZuWy), name: .AVPlayerItemDidPlayToEndTime, object: nil)
    }
    
    @objc func FRmKvXZuWy(note: NSNotification) {
        
        player.seek(to: CMTime.zero)
        playPauseButton.isSelected = false
    }
    
    func PQHqjivIpj() {
        
        playPauseButton = UIButton(type: .custom)
        
        // Создание UIImageView для управления размерами изображения
        let playImage = DVcrMHPZEh(image: UIImage(systemName: "play.fill")!, targetSize: CGSize(width: 50, height: 50))
        let pauseImage = DVcrMHPZEh(image: UIImage(systemName: "pause.fill")!, targetSize: CGSize(width: 50, height: 50))
        
        playPauseButton.setImage(playImage, for: .normal)
        playPauseButton.setImage(pauseImage, for: .selected)
        
        playPauseButton.setImage(playImage.withRenderingMode(.alwaysTemplate), for: .normal)
        playPauseButton.setImage(pauseImage.withRenderingMode(.alwaysTemplate), for: .selected)
        playPauseButton.tintColor = .white
        
        playPauseButton.translatesAutoresizingMaskIntoConstraints = false
        playPauseButton.addTarget(self, action: #selector(VSUbycdhfD), for: .touchUpInside)
        self.view.addSubview(playPauseButton)
        
        NSLayoutConstraint.activate([
            playPauseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playPauseButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            // Устанавливаем размер кнопки в соответствии с размером изображения или любым другим нужным размером
            playPauseButton.widthAnchor.constraint(equalToConstant: 100),
            playPauseButton.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func DVcrMHPZEh(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        
        // Определяем новый размер изображения
        let newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }
        
        // Рендерим изображение в текущем контексте графики
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    @objc func VSUbycdhfD(_ button: UIButton) {
        
        if player.timeControlStatus == .paused {
            player.play()
            button.isSelected = true  // Изменит изображение кнопки на 'pause'
        } else {
            player.pause()
            button.isSelected = false  // Изменит изображение кнопки на 'play'
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { [weak self] _ in
            self?.playerViewController.view.frame = CGRect(origin: .zero, size: size)
        }, completion: nil)
    }
}

class iQsdUxJIuq: UIView {
    
    override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        if gestureRecognizer is UIPinchGestureRecognizer {
            
            return false
        }
        
        return super.gestureRecognizerShouldBegin(gestureRecognizer)
    }
}
