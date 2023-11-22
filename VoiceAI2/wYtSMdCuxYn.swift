//
//  XUieLchAMu.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/26/23.
//

import SwiftUI
import Amplitude

struct XUieLchAMu: View {
    
    @StateObject var MdEYitdxfQ = QRVHdBCkAY()
    @StateObject var VKRNsvAVFr = nUHsnaouIK()
    @StateObject var TPPnCrxWDw = YJUcVYcTuR()
    
    @State var aMtwjSnfMG: Tab = .Generate
    @State var miOWtHJSLA: Bool = false
    
    @AppStorage("status") var status: Bool = false
    @AppStorage("isPaid") var isPaid: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            if status == true {
                
                if isPaid || miOWtHJSLA {
                    
                    VStack(spacing: 0, content: {
                        
                        TabView(selection: $aMtwjSnfMG, content: {
                            
                            ZSexfrYorL(MdEYitdxfQ: MdEYitdxfQ)
                                .tag(Tab.Generate)
                            
                            UXDhvigVNI(MdEYitdxfQ: TPPnCrxWDw, YQrAOjGDyW: MdEYitdxfQ)
                                .tag(Tab.Recordings)
                            
                            YRYFzTPnay()
                                .tag(Tab.Settings)
                        })
                        
                        TeKYAYebYA(FPiXibrsHB: $aMtwjSnfMG)
                    })
                    .ignoresSafeArea(.all, edges: .bottom)
                    
                } else {
                    
                    eaXSNmpjqN(miOWtHJSLA: $miOWtHJSLA, optcEqXeLB: .constant(false))
                }
                
            } else if status == false {
                
                uFGcAsUwDM()
            }
        }
        .alert(isPresented: $MdEYitdxfQ.BnIJriKzlw) {
            
            Alert(
                title: Text("Video duration is longer than maximum"),
                message: Text("Select a different video from the gallery"),
                primaryButton: .default(Text("Choose Another")) {
                    
                    MdEYitdxfQ.BnIJriKzlw = false
                    MdEYitdxfQ.BGXqWgaJYc()
                },
                secondaryButton: .destructive(Text("Cancel")) {
                    
                    MdEYitdxfQ.BnIJriKzlw = false
                }
            )
        }
        .fullScreenCover(isPresented: $MdEYitdxfQ.DJbvhoJPFt) {
            
            if let index = MdEYitdxfQ.GQlkJDOwfb {
                
                QSWQxhtnqO(MdEYitdxfQ: TPPnCrxWDw, YQrAOjGDyW: MdEYitdxfQ, index: index)
            }
        }
        .alert(isPresented: $MdEYitdxfQ.QUIBuRdhOy) {
            
            Alert(
                title: Text(MdEYitdxfQ.JIxuvhNJWm.title),
                message: Text(MdEYitdxfQ.JIxuvhNJWm.subtitle),
                dismissButton: .default(Text("OK"))
            )
        }
        .fullScreenCover(isPresented: $MdEYitdxfQ.otHUeqiCYO) {
            
            SmDtsuMHqP(MdEYitdxfQ: MdEYitdxfQ)
        }
        .sheet(isPresented: $MdEYitdxfQ.wKhhsClHxH) {
            
            VTjhJDbpvF(isPresented: $MdEYitdxfQ.wKhhsClHxH, BnIJriKzlw: $MdEYitdxfQ.BnIJriKzlw, iMDJuiXhiW: $MdEYitdxfQ.iMDJuiXhiW)
                .ignoresSafeArea()
        }
        .sheet(isPresented: $MdEYitdxfQ.scaAfQxQQJ, content: {
            
            eaXSNmpjqN(miOWtHJSLA: .constant(false), optcEqXeLB: $MdEYitdxfQ.scaAfQxQQJ)
        })
        .sheet(isPresented: $MdEYitdxfQ.AyxhQiAutq) {
            
            BMGSpiOVZo(isFromRecordedCamera: false, YQrAOjGDyW: MdEYitdxfQ)
        }
        .fullScreenCover(isPresented: $MdEYitdxfQ.LQFzBSIAay) {
            
            qyCkRSDSGH(YQrAOjGDyW: MdEYitdxfQ)
        }
        .onAppear {
            
            isPaid = VKRNsvAVFr.KWbjuiUXSH()
        }
        .overlay (
            
            ZStack {
                
                Color.black.opacity(MdEYitdxfQ.GGxCbhXDIM ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        MdEYitdxfQ.chvXYRIRai = nil
                        
                        withAnimation(.spring()) {
                            
                            MdEYitdxfQ.GGxCbhXDIM = false
                        }
                    }
                
                VStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("gray").opacity(0.6))
                        .frame(width: 50, height: 5)
                    
                    ZStack {
                        
                        Text("Generate voice from...")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .medium))
                        
                        HStack {
                            
                            Spacer()
                            
                            Button(action: {
                                
                                MdEYitdxfQ.chvXYRIRai = nil
                                
                                withAnimation(.spring()) {
                                    
                                    MdEYitdxfQ.GGxCbhXDIM = false
                                }
                                
                            }, label: {
                                
                                Image(systemName: "xmark")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 13, weight: .bold))
                                    .padding(8)
                                    .background(Circle().fill(.gray.opacity(0.3)))
                            })
                        }
                    }
                    .padding(.bottom)
                    
                    HStack {
                        
                        Button(action: {
                            
                            MdEYitdxfQ.icTSWYUCZp()
                            
                            MdEYitdxfQ.LQFzBSIAay = true
                            
                        }, label: {
                            
                            VStack(spacing: 14) {
                                
                                Image("record_video")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 66, height: 66)
                                
                                Text("Record Video")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color(.secondary)))
                        })
                        .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                        
                        Button(action: {
                            
                            MdEYitdxfQ.ttZCOckhQR()
                            
                            MdEYitdxfQ.BGXqWgaJYc()
                            
                        }, label: {
                            
                            VStack(spacing: 14) {
                                
                                Image("gallery_video")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 66, height: 66)
                                
                                Text("Select from gallery")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color(.secondary)))
                        })
                        .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                    }
                    
                    Text("Max. video length: 10 sec.")
                        .foregroundColor(.gray)
                        .font(.system(size: 16, weight: .regular))
                        .padding(.top)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                .background(
                    
                    Color(.bg)
                        .cornerRadius(radius: 15, corners: [.topLeft, .topRight])
                        .ignoresSafeArea()
                )
                .frame(maxHeight: .infinity, alignment: .bottom)
                .offset(y: MdEYitdxfQ.GGxCbhXDIM ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    XUieLchAMu()
}
