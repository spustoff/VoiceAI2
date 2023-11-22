//
//  TeKYAYebYA.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Amplitude

struct TeKYAYebYA: View {
    
    @Binding var FPiXibrsHB: Tab
    
    var body: some View {
        
        HStack {
            
            ForEach(Tab.allCases, id: \.self) { index in
                
                Button(action: {
                    
                    Amplitude.instance().logEvent("\(index.rawValue)_tap_tapbar")
                    
                    FPiXibrsHB = index
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 6, content: {
                        
                        Image(index.rawValue)
                            .renderingMode(.template)
                            .foregroundColor(FPiXibrsHB == index ? Color("primary") : Color.gray)
                            .frame(height: 22)
                        
                        Text(index.rawValue)
                            .foregroundColor(FPiXibrsHB == index ? Color("primary") : Color.gray)
                            .font(.system(size: 12, weight: .regular))
                        
                    })
                    .frame(maxWidth: .infinity)
                })
                .buttonStyle(RBnbXpDCUh(scaling: 0.9))
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.top, 9)
        .padding(.bottom, 28)
        .background(Color("secondary").ignoresSafeArea())
    }
}

enum Tab: String, CaseIterable {
    
    case Generate = "Generate"
    
    case Recordings = "Recordings"
    
    case Settings = "Settings"
    
}

#Preview {
    XUieLchAMu()
}
