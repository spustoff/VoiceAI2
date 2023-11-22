//
//  qyCkRSDSGH.swift
//  VoiceAI2
//
//  Created by Вячеслав on 10/5/23.
//

import SwiftUI

struct qyCkRSDSGH: View {
    
    @Environment(\.presentationMode) var router
    
    @StateObject var MdEYitdxfQ = qQxNxdyRGk()
    @StateObject var YQrAOjGDyW: QRVHdBCkAY
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            QeifGVVdYg(eIkThBfcxj: $MdEYitdxfQ.eIkThBfcxj, ajUQzUUVxV: $MdEYitdxfQ.KaxsKACuFh, hHxBtBCdmT: $YQrAOjGDyW.iMDJuiXhiW)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                ZStack {
                    
                    Text(MdEYitdxfQ.OtwyOWKJZQ.rawValue)
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium))
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                                .padding(14)
                                .background(Circle().fill(Color("bg")))
                        })
                    }
                }
                .padding()
                
                Spacer()
                
                if !MdEYitdxfQ.eIkThBfcxj && !MdEYitdxfQ.qmDPpfAFHv {
                    
                    HStack {
                        
                        Button(action: {
                            
                            YQrAOjGDyW.oJgsSbMCjI = true
                            
                        }, label: {
                            
                            HStack(alignment: .center, spacing: 5, content: {
                                
                                Image(YQrAOjGDyW.chvXYRIRai?.speaker_name ?? "The Rock")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 31, height: 31)
                                    .clipShape(Circle())
                                
                                Text(YQrAOjGDyW.chvXYRIRai?.speaker_name ?? "The Rock")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .padding(.trailing, 8)
                                
                                Image(systemName: "square.and.pencil")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 15, weight: .regular))
                            })
                            .padding(.horizontal)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("secondary").opacity(0.6)))
                        })
                        
                        Button(action: {
                            
                            MdEYitdxfQ.plvhVjnAOT = true
                            
                        }, label: {
                            
                            HStack(alignment: .center, spacing: 5, content: {
                                
                                Image(YQrAOjGDyW.oCCLkxZQME?.language_name ?? "English")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 31, height: 31)
                                    .clipShape(Circle())
                                
                                Text(YQrAOjGDyW.oCCLkxZQME?.language_name ?? "English")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .padding(.trailing, 8)
                                
                                Image(systemName: "square.and.pencil")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 15, weight: .regular))
                            })
                            .padding(.horizontal)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("secondary").opacity(0.6)))
                        })
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                
                if !MdEYitdxfQ.eIkThBfcxj && !MdEYitdxfQ.qmDPpfAFHv {
                 
                    HStack {
                        
                        Button(action: {
                            
                            MdEYitdxfQ.CpHtrZJzrq.toggle()
                            
                        }, label: {
                            
                            VStack(alignment: .center, spacing: 9, content: {
                                
                                Image(systemName: "timer")
                                    .foregroundColor(MdEYitdxfQ.CpHtrZJzrq ? Color("primary") : .white)
                                    .font(.system(size: 28, weight: .semibold))
                                
                                Text("Timer")
                                    .foregroundColor(MdEYitdxfQ.CpHtrZJzrq ? Color("primary") : .gray)
                                    .font(.system(size: 14, weight: .regular))
                            })
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                            MdEYitdxfQ.KaxsKACuFh.toggle()
                            
                        }, label: {
                            
                            VStack(alignment: .center, spacing: 9, content: {
                                
                                Image(systemName: "arrow.triangle.2.circlepath.camera")
                                    .foregroundColor(.white)
                                    .font(.system(size: 28, weight: .semibold))
                                
                                Text("Flip")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                            })
                        })
                    }
                    .padding()
                    .padding(.top, 10)
                    .padding(.horizontal, 50)
                    .background(
                        
                        Color("secondary")
                            .cornerRadius(radius: 15, corners: [.topLeft, .topRight])
                            .ignoresSafeArea()
                    )
                }
            }
            
            Text("\(MdEYitdxfQ.RXYqaRumzA)")
                .foregroundColor(.white)
                .font(.system(size: 60, weight: .bold))
                .opacity(MdEYitdxfQ.CpHtrZJzrq ? 1 : 0)
            
            VStack {
                
                Spacer()
                
                if MdEYitdxfQ.eIkThBfcxj {
                    
                    Button(action: {
                        
                        MdEYitdxfQ.HpuEYkyOTT()
                        
                    }, label: {
                        
                        VStack(alignment: .center, spacing: 30, content: {
                            
                            Text("\(MdEYitdxfQ.formattedVideoRecordingDuration)")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 14, weight: .medium))
                                .frame(width: 60, height: 34)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg")))
                            
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color("pink"))
                                .frame(width: 22, height: 22)
                                .overlay (
                                    
                                    Circle()
                                        .stroke(Color("gray"), lineWidth: 2)
                                        .frame(width: 70, height: 70)
                                )
                        })
                    })
                    
                } else {
                    
                    Button(action: {
                        
                        MdEYitdxfQ.HpuEYkyOTT()
                        
                    }, label: {
                        
                        Circle()
                            .fill(Color("pink"))
                            .frame(width: 55, height: 55)
                            .overlay (
                                
                                Circle()
                                    .stroke(Color("gray"), lineWidth: 2)
                                    .frame(width: 70, height: 70)
                            )
                    })
                    .buttonStyle(RBnbXpDCUh(scaling: 0.5))
                }
            }
            .padding(.bottom, MdEYitdxfQ.eIkThBfcxj || MdEYitdxfQ.qmDPpfAFHv ? 40 : 20)
        }
        .onChange(of: MdEYitdxfQ.eIkThBfcxj, perform: { newValue in
            
            if newValue {
                
                MdEYitdxfQ.kPpvbvGeZb()
                
            } else {
                
                MdEYitdxfQ.WHpbmsXgxX = 0
            }
        })
        .onChange(of: MdEYitdxfQ.WHpbmsXgxX, perform: { value in
            
            if value >= 10 {
                
                MdEYitdxfQ.ncEKXJbOYD()
            }
        })
        .sheet(isPresented: $YQrAOjGDyW.oJgsSbMCjI) {
            
            wssBHRliOm(YQrAOjGDyW: YQrAOjGDyW)
        }
        .sheet(isPresented: $MdEYitdxfQ.plvhVjnAOT) {
            
            BMGSpiOVZo(isFromRecordedCamera: true, YQrAOjGDyW: YQrAOjGDyW)
        }
    }
}

#Preview {
    
    qyCkRSDSGH(YQrAOjGDyW: QRVHdBCkAY())
}

