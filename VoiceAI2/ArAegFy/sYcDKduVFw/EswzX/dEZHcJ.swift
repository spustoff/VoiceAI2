//
//  DIUJlVwnIu.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

struct DIUJlVwnIu: View {
    
    let trackerRotation: Double = 2
    let animationDuration: Double = 0.55
    
    @State var FkoCjQqadV: Bool = false
    @State var PfnPSEZfis: CGFloat = 0.17
    @State var gPDjUxXyVA: CGFloat = 0.325
    
    @State var cLMdstZnLk: Angle = Angle.degrees(0)
    
    @State var width: CGFloat
    @State var height: CGFloat
    @State var gGixCRvyJb: Color
    
    var body: some View {
        
        ZStack {
            
            ZStack {
                
                Circle()
                    .trim(from: PfnPSEZfis, to: gPDjUxXyVA)
                    .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round))
                    .fill(gGixCRvyJb)
                    .rotationEffect(self.cLMdstZnLk)
            }
            .frame(width: width, height: height)
            .onAppear() {
                
                self.jDnBLfUeLk()
                
                Timer.scheduledTimer(withTimeInterval: self.trackerRotation * self.animationDuration + (self.animationDuration), repeats: true) { (mainTimer) in
                    
                    self.jDnBLfUeLk()
                }
            }
        }
    }
    
    func DBvoaNWUli() -> Angle {
        
        return .degrees(360 * self.trackerRotation) + .degrees(120)
    }
    
    func jDnBLfUeLk() {
        
        withAnimation(.spring(response: animationDuration * 2 )) {
            
            self.cLMdstZnLk = .degrees(-57.5)
        }
        
        Timer.scheduledTimer(withTimeInterval: animationDuration, repeats: false) { _ in
            
            withAnimation(.easeInOut(duration: self.trackerRotation * self.animationDuration)) {
                
                self.cLMdstZnLk += self.DBvoaNWUli()
            }
        }
        
        Timer.scheduledTimer(withTimeInterval: animationDuration * 1.25, repeats: false) { _ in
            
            withAnimation(.easeOut(duration: (self.trackerRotation * self.animationDuration) / 2.25 )) {
                
                self.gPDjUxXyVA = 0.925
            }
        }
        
        Timer.scheduledTimer(withTimeInterval: trackerRotation * animationDuration, repeats: false) { _ in
            
            self.cLMdstZnLk = .degrees(47.5)
            
            withAnimation(.easeOut(duration: self.animationDuration)) {
                
                self.gPDjUxXyVA = 0.325
            }
        }
    }
}
