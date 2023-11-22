//
//  YRYFzTPnay.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI

struct YRYFzTPnay: View {

    @StateObject var MdEYitdxfQ = cLATzUTpvd()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Settings")
                    .foregroundColor(.white)
                    .font(.system(size: 28, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.horizontal, .top])
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        let sortedDictionary = MdEYitdxfQ.mpPKNSkinL.sorted(by: { $0.key < $1.key })
                        
                        ForEach(sortedDictionary, id: \.key) { key, value in
                            
                            Button(action: {
                                
                                MdEYitdxfQ.RSGaivzXvq(value)
                                
                            }, label: {
                                
                                HStack(spacing: 10) {
                                    
                                    Image(systemName: key)
                                        .foregroundColor(Color("primary"))
                                        .frame(width: 22, height: 22)
                                        .padding(7)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("icon_bg")))
                                    
                                    Text(value.text)
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color(.secondary)))
                            })
                            .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                        }
                        
                        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                            
                            Text("App version: \(version)")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                                .padding(.vertical)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    YRYFzTPnay()
}
