//
//  FwdsBMggBu.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Navigator
import ApphudSDK
import Amplitude

class AppDelegate: NSObject, UIApplicationDelegate {
    
    @State var VKRNsvAVFr = nUHsnaouIK()
    @AppStorage("isPaid") var isPaid: Bool = false
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Apphud.start(apiKey: "app_yGaDjwtFexpVAmcP4o8HPBtXYkgV67")
        Amplitude.instance().initializeApiKey("e72785a3e41fd05a5613d6b5b251ebb3")
        
        return true
    }
    
    func RJyBhKqfHA(_ application: UIApplication) {
        
        isPaid = VKRNsvAVFr.KWbjuiUXSH()
    }
}

@main
struct FwdsBMggBu: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationRootView {
                
                XUieLchAMu()
            }
        }
    }
}
