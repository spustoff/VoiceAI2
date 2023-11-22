//
//  QSWQxhtnqO.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI

struct QSWQxhtnqO: View {
    
    @StateObject var MdEYitdxfQ: YJUcVYcTuR
    @StateObject var YQrAOjGDyW: QRVHdBCkAY
    
    @Environment(\.presentationMode) var router
    
    let index: ResultModel
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            if let hHxBtBCdmT = index.videoURL {
                
                OxPXFBAkbC(hHxBtBCdmT: hHxBtBCdmT)
                    .ignoresSafeArea()
            }
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        
                        MdEYitdxfQ.aOzAkZvrFt = true
                        
                    }, label: {
                        
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                            .font(.system(size: 13, weight: .regular))
                            .padding(14)
                            .background(Circle().fill(Color("bg")))
                    })
                    
                    Text("Result")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .medium))
                        .frame(maxWidth: .infinity)
                    
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
                .padding()
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 25, content: {
                    
                    HStack(spacing: 9, content: {
                        
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
                        
                        Text(index.character?.speaker_name ?? "")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .medium))
                            .multilineTextAlignment(.leading)
                    })
                    
                    HStack {
                        
                        Text(index.prompt ?? "")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                MdEYitdxfQ.AGfdnZyLuN = true
                            }
                            
                        }, label: {
                            
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 17, weight: .regular))
                        })
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Text("Go to Main")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 15, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("secondary")))
                        })
                        
                        Button(action: {
                            
                            MdEYitdxfQ.JepbHwhbeP = true
                            
                        }, label: {
                            
                            HStack(spacing: 5) {
                                
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(Color("secondary"))
                                    .font(.system(size: 14, weight: .regular))
                                
                                Text("Share")
                                    .foregroundColor(Color("secondary"))
                                    .font(.system(size: 15, weight: .regular))
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        })
                    }
                })
                .padding()
                .background(Color("secondary").opacity(0.55).cornerRadius(radius: 20, corners: [.topLeft, .topRight]).ignoresSafeArea())
            }
        }
        .onAppear {
            
            MdEYitdxfQ.iMDJuiXhiW = index
        }
        .sheet(isPresented: $MdEYitdxfQ.JepbHwhbeP, content: {
            
            if let url = index.videoURL {
                
                BYwTjHahIm(activityItems: [url])
            }
        })
        .alert(isPresented: $MdEYitdxfQ.aOzAkZvrFt) {
            
            Alert(
                title: Text("Delete this record?"),
                message: Text("Your AI generation will be deleted and not saved in the 'recordings' tab"),
                primaryButton: .destructive(Text("Delete").foregroundColor(.red)) {
                    
                    CoreDataStack.shared.CvTCrlvQBD(withUniqueID: index.uniqueID, completion: {
                        
                        YQrAOjGDyW.NqZKbVMfUU()
                        
                        router.wrappedValue.dismiss()
                    })
                },
                secondaryButton: .default(Text("Cancel")) {
                    
                    MdEYitdxfQ.aOzAkZvrFt = false
                }
            )
        }
        .if(MdEYitdxfQ.AGfdnZyLuN == true) { view in
            
            view
                .overlay (
                
                    ZStack {
                        
                        Color.black.opacity(MdEYitdxfQ.AGfdnZyLuN ? 0.5 : 0)
                            .ignoresSafeArea()
                            .onTapGesture {
                                
                                UIApplication.shared.gxxcSdOsKC()
                                
                                withAnimation(.spring()) {
                                    
                                    MdEYitdxfQ.AGfdnZyLuN = false
                                }
                            }
                        
                        VStack {
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("gray").opacity(0.6))
                                .frame(width: 50, height: 5)
                                .padding(.bottom, 5)
                            
                            ZStack {
                                
                                Text("Edit your prompt")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .medium))
                                
                                HStack {
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        
                                        UIApplication.shared.gxxcSdOsKC()
                                        
                                        withAnimation(.spring()) {
                                            
                                            MdEYitdxfQ.AGfdnZyLuN = false
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
                            
                            yTVPEdoDdS(text: $MdEYitdxfQ.syQAGMFvZW, height: $MdEYitdxfQ.XhVzmykswk, vqCmyjtGVJ: .constant(true))
                                .frame(height: MdEYitdxfQ.XhVzmykswk < 160 ? MdEYitdxfQ.XhVzmykswk : 160)
                                .padding(6)
                                .padding(.horizontal, 4)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("icon_bg").opacity(0.6)))
                                .padding(.bottom, 10)
                            
                            Button(action: {
                                
                                UIApplication.shared.gxxcSdOsKC()
                                
                                withAnimation(.spring()) {
                                    
                                    MdEYitdxfQ.AGfdnZyLuN = false
                                }
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    
                                    router.wrappedValue.dismiss()
                                    
                                    YQrAOjGDyW.BpjvKtCkpE(index: index, prompt: MdEYitdxfQ.syQAGMFvZW)
                                }
                                
                            }, label: {
                                
                                Text("Save")
                                    .foregroundColor(Color("bg"))
                                    .font(.system(size: 15, weight: .regular))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                            })
                            .buttonStyle(RBnbXpDCUh(scaling: 0.9))
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(
                            
                            Color(.bg)
                                .cornerRadius(radius: 15, corners: [.topLeft, .topRight])
                                .ignoresSafeArea()
                        )
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .offset(y: MdEYitdxfQ.AGfdnZyLuN ? 0 : UIScreen.main.bounds.height)
                    }
                )
        }
    }
}
