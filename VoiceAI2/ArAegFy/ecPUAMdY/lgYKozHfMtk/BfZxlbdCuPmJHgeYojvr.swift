//
//  qQxNxdyRGk.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/5/23.
//

import SwiftUI

final class qQxNxdyRGk: ObservableObject {
    
    @Published var OtwyOWKJZQ: RecordStatus = .no_recording
    
    @Published var eIkThBfcxj: Bool = false
    @Published var CpHtrZJzrq: Bool = false
    @Published var KaxsKACuFh: Bool = true
    @Published var qmDPpfAFHv: Bool = false
    
    @Published var RXYqaRumzA: Int = 3
    
    @Published var WHpbmsXgxX: Int = 0
    
    @Published var plvhVjnAOT: Bool = false
    
    var formattedVideoRecordingDuration: String {
        
        let minutes = WHpbmsXgxX / 60
        let seconds = WHpbmsXgxX % 60
        
        return String(format: "%d:%02d", minutes, seconds)
    }
    
    var timerCountDown: Timer?
    
    func HpuEYkyOTT() {
        
        if self.qmDPpfAFHv {
            
            self.ncEKXJbOYD()
            
        } else {
            
            if self.CpHtrZJzrq {
                
                self.lxnLcWcguN()
                
            } else {
                
                self.OtwyOWKJZQ = .recording
                self.eIkThBfcxj.toggle()
            }
        }
    }
    
    func lxnLcWcguN() {
        
        OtwyOWKJZQ = .get_ready
        qmDPpfAFHv = true
        
        timerCountDown = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            
            if self.RXYqaRumzA > 0 {
                
                self.RXYqaRumzA -= 1
                
            } else {
                
                self.CpHtrZJzrq = false
                self.OtwyOWKJZQ = .recording
                self.eIkThBfcxj = true
                self.qmDPpfAFHv = false
                self.RXYqaRumzA = 3
            }
        }
    }
    
    func ncEKXJbOYD() {
        
        timerCountDown?.invalidate()
        
        self.CpHtrZJzrq = false
        self.OtwyOWKJZQ = .no_recording
        self.eIkThBfcxj = false
        self.qmDPpfAFHv = false
        self.RXYqaRumzA = 3
    }
    
    func kPpvbvGeZb() {
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            
            if self.eIkThBfcxj {
                
                self.WHpbmsXgxX += 1
                
            } else {
                
                timer.invalidate()
            }
        }
    }
}

enum RecordStatus: String, CaseIterable {
    
    case no_recording = "Record Video"
    case get_ready = "Get Ready..."
    case recording = "Video Recording..."
}
