//
//  UXDhvigVNI.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Amplitude

struct UXDhvigVNI: View {
    
    @StateObject var MdEYitdxfQ: YJUcVYcTuR
    @StateObject var YQrAOjGDyW: QRVHdBCkAY
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Recordings")
                    .foregroundColor(.white)
                    .font(.system(size: 28, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.horizontal, .top])
                
                if YQrAOjGDyW.uvXPDTpDnT.isEmpty {
                    
                    VStack(spacing: 10) {
                        
                        Image("empty_recordings")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 48, height: 48)
                        
                        VStack(spacing: 5, content: {
                            
                            Text("No recordings")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center)
                            
                            Text("Create your first video under the 'generate' tab")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .multilineTextAlignment(.center)
                        })
                    }
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                            
                            ForEach(YQrAOjGDyW.uvXPDTpDnT, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    Amplitude.instance().logEvent("Recordings_video_play")
                                    
                                    MdEYitdxfQ.iMDJuiXhiW = index
                                    
                                    MdEYitdxfQ.mjbrNQGhHS = true
                                    
                                }, label: {
                                    
                                    ZStack {
                                        
                                        if let video = index.videoURL {
                                            
                                            sSifaBCPcb(hHxBtBCdmT: video)
                                                .cornerRadius(radius: 15, corners: .allCorners)
                                        }
                                    }
                                    .overlay (
                                    
                                        VStack(alignment: .leading, content: {
                                            
                                            HStack {
                                                
                                                HStack(alignment: .top, spacing: 6, content: {
                                                    
                                                    HStack(spacing: -15, content: {
                                                        
                                                        Image(index.character?.speaker_name ?? "")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 31, height: 31)
                                                            .clipShape(Circle())
                                                        
                                                        Image(index.language ?? "")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(width: 31, height: 31)
                                                            .clipShape(Circle())
                                                    })
                                                    
                                                    VStack(alignment: .leading, spacing: 0) {
                                                        
                                                        Text(index.character?.speaker_name ?? "")
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 14, weight: .medium))
                                                            .multilineTextAlignment(.leading)
                                                            .lineLimit(1)
                                                        
                                                        Text("\(index.time_string ?? ""), \(index.date_string ?? "")")
                                                            .foregroundColor(.white.opacity(0.5))
                                                            .font(.system(size: 12, weight: .regular))
                                                            .multilineTextAlignment(.leading)
                                                            .lineLimit(1)
                                                    }
                                                })
                                                .padding(8)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .background(LinearGradient(colors: [Color.black.opacity(0.8), Color.black.opacity(0.5), Color.black.opacity(0.1)], startPoint: .top, endPoint: .bottom).cornerRadius(radius: 15, corners: [.topLeft, .topRight]))
                                            }
                                            
                                            Spacer()
                                            
                                            HStack {
                                                
                                                Button(action: {
                                                    
                                                    MdEYitdxfQ.iMDJuiXhiW = index
                                                    
                                                    MdEYitdxfQ.JepbHwhbeP = true
                                                    
                                                }, label: {
                                                    
                                                    Image(systemName: "square.and.arrow.up")
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 14, weight: .regular))
                                                        .frame(width: 34, height: 34)
                                                        .background(Circle().fill(Color("bg")))
                                                })
                                                
                                                Spacer()
                                                
                                                Text("\(index.video_duration ?? "")")
                                                    .foregroundColor(Color("primary"))
                                                    .font(.system(size: 11, weight: .regular))
                                                    .frame(height: 34)
                                                    .padding(.horizontal, 8)
                                                    .background(RoundedRectangle(cornerRadius: 10 ).fill(Color("bg")))
                                            }
                                            .padding(9)
                                        })
                                    )
                                })
                                .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                            }
                        })
                        .padding([.horizontal, .bottom])
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $MdEYitdxfQ.mjbrNQGhHS) {
            
            if let index = MdEYitdxfQ.iMDJuiXhiW {
                
                QSWQxhtnqO(MdEYitdxfQ: MdEYitdxfQ, YQrAOjGDyW: YQrAOjGDyW, index: index)
            }
        }
        .sheet(isPresented: $MdEYitdxfQ.JepbHwhbeP, content: {
            
            if let url = MdEYitdxfQ.iMDJuiXhiW?.videoURL {
                
                BYwTjHahIm(activityItems: [url])
            }
        })
        .onAppear {
            
            YQrAOjGDyW.NqZKbVMfUU()
        }
    }
}

#Preview {
    UXDhvigVNI(MdEYitdxfQ: YJUcVYcTuR(), YQrAOjGDyW: QRVHdBCkAY())
}
