//
//  SmDtsuMHqP.swift
//  VoiceAI2
//
//  Created by Вячеслав on 9/27/23.
//

import SwiftUI

struct SmDtsuMHqP: View {
    
    @StateObject var MdEYitdxfQ: QRVHdBCkAY
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image(.bg)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                VStack(spacing: 10, content: {
                    
                    Text("Generation in progress...")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Just give me a moment")
                        .foregroundColor(.gray)
                        .font(.system(size: 18, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                .padding(.top, 40)
                
                ZStack {
                    
                    Circle()
                        .fill(Color.black.opacity(0.4))
                        .frame(width: 222, height: 222)
                    
                    DIUJlVwnIu(width: 205, height: 205, gGixCRvyJb: .white)
                    
                    VStack(spacing: 10) {
                        
                        Image(MdEYitdxfQ.chvXYRIRai?.speaker_name ?? "nil")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 77, height: 77)
                        
                        HStack {
                            
                            Image(MdEYitdxfQ.oCCLkxZQME?.language_name ?? "")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 20, height: 20)
                            
                            Text(MdEYitdxfQ.oCCLkxZQME?.language_name ?? "")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                        }
                        
                        Text(MdEYitdxfQ.chvXYRIRai?.speaker_name ?? "nil")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                    }
                }
                .frame(maxHeight: .infinity, alignment: .center)
                
                Button(action: {
                    
                    MdEYitdxfQ.grShesXDVM()
                    
                }, label: {
                    
                    Text("Cancel")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 15, weight: .regular))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.secondary)))
                        .padding(.horizontal)
                })
                .buttonStyle(RBnbXpDCUh(scaling: 0.9))
            }
        }
    }
}

#Preview {
    SmDtsuMHqP(MdEYitdxfQ: QRVHdBCkAY())
}
